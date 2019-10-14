/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  *   *
  */

#include <stdio.h>
#include <string.h>
#include "syscall.h"
#include "debug.h"
#include "main.h"

#define CONTROL_IN  GPIOI->IDR
#define ADDR_IN     GPIOC->IDR
#define DATA_IN     GPIOG->IDR
#define DATA_OUT    GPIOG->ODR

#define PHI2_RD        (GPIOI->IDR & 0x0001)
#define S5_RD          (GPIOI->IDR & 0x0002)
#define S4_RD          (GPIOI->IDR & 0x0004)
#define S4_AND_S5_HIGH (GPIOI->IDR & 0x0006) == 0x6
#define D1XX_RD        (GPIOI->IDR & 0x0008)

#define PHI2    0x0001
#define S5      0x0002
#define S4      0x0004
#define D1XX    0x0008
#define CCTL    0x0010
#define RW      0x0020

#define SET_DATA_MODE_IN        GPIOG->MODER = 0x00000000;
#define SET_DATA_MODE_OUT       GPIOG->MODER = 0x00005555;

#define GREEN_LED_OFF           LL_GPIO_ResetOutputPin(GPIOB, GPIO_PIN_0);  /* HIGH ACTIVE */
#define GREEN_LED_ON            LL_GPIO_SetOutputPin(GPIOB, GPIO_PIN_0);    /* HIGH ACTIVE */

#define CPU_RESET_ASSERT      LL_GPIO_ResetOutputPin(GPIOB, GPIO_PIN_1); /* RST -> GPIO(B.1) LOW */
#define CPU_RESET_DEASSERT    LL_GPIO_SetOutputPin(GPIOB, GPIO_PIN_1);   /* RST -> GPIO(B.1) HIGH */

#define SPI_SLAVE_SELECT(a)   LL_GPIO_ResetOutputPin(GPIOA, (1 << a)); /* PA0-PA1-PA2-PA3 */

static volatile uint8_t SPI_DATA_IN;
static volatile uint8_t SPI_DATA_OUT;
static volatile uint8_t SPI_STATUS_REGISTER;
static volatile uint8_t SPI_CONTROL_REGISTER;
static volatile uint8_t SPI_CLK_DIVISOR_REGISTER;
static volatile uint8_t SPI_SLAVE_SELECT_REGISTER;
static volatile uint32_t spi_prescaler = 0;
static volatile uint32_t spi_cpol = 0;
static volatile uint32_t spi_cpha = 0;
static volatile uint32_t spi_csel = 0;
static volatile int SPI_ENABLED = 0;

#define ATARI_PBI_DEVICE
#undef  ATARI_PBI_DEVICE

/**
 * Atari ONLY
 * ----------
 * To enable this device is mandatory to follow the PBI device initialization

ZP:		equ $A0

buffer:
	.db	'SPI65 data interface', 0x00

init:
		lda #$80
		sta $D1FF
		; Now the device is ready and the D5xx (nCCTL) address space is ready
		; to be used
busy:
		lda $D500	;--> read from SPI Status Register
		and #$20
		beq busy
		rts

txcomplete:
		lda $D500
		and #$80
		beq txcomplete
		rts

; Now the SPI is ready to be used
		lda #3
		sta $D501	; setup CPOL and CPHA
		lda #02
		sta $D502	; store DIV8 CLK divisor
		lda #1
		sta $D503	; setup SLAVE #1 SPI_SEL0

		lda #buffer%256
		sta ZP
		lda #buffer%256
		sta ZP+1
		ldx #0

start:
		; Get the first character from buffer
		lda $(ZP),x
		bnz spiwrite
		rts		; EXIT

spiwrite:
		sta $D500
		jsr txcomplete	; wait completion
		inx
		jmp start

-----------------------------------------------------------------------------

In C:

void init(void)
{
	uint8_t * ptr = 0xD1FF;
	*(ptr) = 0x80;
}

void busy(void)
{
	uint8_t status;
	for (;;)
	{
		status = *(0xD500);
		if (status & 0x20)
			continue;
		else
			break;
	}
}

void txcomplete(void)
{
	uint8_t status;
	for (;;)
	{
		status = *(0xD500);
		if (status & 0x80)
			continue;
		else
			break;
	}
}

void main(void)
{
	unsigned char[] = "SPI65 data interface";
	int x;
	uint8_t * reg;

	init();

	reg = 0xD500;
	*(reg + 1) = 3; // setup CPOL and CPHA
	*(reg + 2) = 2; // store DIV8 CLK divisor
	*(reg + 3) = 1; // setup SLAVE #1 SPI_SEL0

	for (x = 0; x < strlen(char); x++)
	{
		*(reg) = char[x];
		txcomplete();
	}
	// EXIT
}



**/
// STATUS & CONTROL REGISTERS
#define TC   (1 << 7) //$80
#define IER  (1 << 6) //$40
#define BSY  (1 << 5) //$20
#define FRX  (1 << 4) //$10
#define TMO  (1 << 3) //$08
#define ECE  (1 << 2) //$04
#define CPOL (1 << 1) //$02
#define CPHA (1 << 0) //$01

#define spi_write() LL_SPI_TransmitData8(SPI1, SPI_DATA_OUT);
#define spi_read()  LL_SPI_ReceiveData8(SPI1);

// SCLK DIVISOR REGISTER
/**
 * bit 0-2 as divisor (from 0 (CLK/2) to 7 (CLK/8)
 **/
static int debuglevel = DBG_INFO;

void SystemClock_Config(void);
static void gpio_init(void);
static void usart_config(int baudrate);

static LL_SPI_InitTypeDef SPI_InitStruct = {0};

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
	LL_FLASH_SetLatency(LL_FLASH_LATENCY_5);

	if(LL_FLASH_GetLatency() != LL_FLASH_LATENCY_5)
	{
		Error_Handler("SystemClock_Config");
	}
	LL_PWR_SetRegulVoltageScaling(LL_PWR_REGU_VOLTAGE_SCALE1);
	LL_PWR_EnableOverDriveMode();
	LL_RCC_HSE_EnableBypass();
	LL_RCC_HSE_Enable();

	/* Wait till HSE is ready */
	while(LL_RCC_HSE_IsReady() != 1)
		;;

	LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE, LL_RCC_PLLM_DIV_4, 180, LL_RCC_PLLP_DIV_2);
	LL_RCC_PLL_Enable();

	/* Wait till PLL is ready */
	while(LL_RCC_PLL_IsReady() != 1)
		;;

	LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
	LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_4);
	LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_2);
	LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);

	/* Wait till System clock is ready */
	while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
		;;

	/* We are running @ 180Mhz */
	LL_Init1msTick(180000000);
	LL_SYSTICK_SetClkSource(LL_SYSTICK_CLKSOURCE_HCLK);
	LL_SetSystemCoreClock(180000000);
	LL_RCC_SetTIMPrescaler(LL_RCC_TIM_PRESCALER_TWICE);
}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void usart_config(int baudrate)
{
	LL_USART_InitTypeDef USART_InitStruct = {0};

	LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

	/* Peripheral clock enable */
	LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_USART1);

	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
	/**USART1 GPIO Configuration
	PA9   ------> USART1_TX
	PA10   ------> USART1_RX
	*/
	GPIO_InitStruct.Pin = DEBUG_TX_Pin|DEBUG_RX_Pin;
	GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
	GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_UP;
	GPIO_InitStruct.Alternate = LL_GPIO_AF_7;
	LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	USART_InitStruct.BaudRate = 115200;
	USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_8B;
	USART_InitStruct.StopBits = LL_USART_STOPBITS_1;
	USART_InitStruct.Parity = LL_USART_PARITY_NONE;
	USART_InitStruct.TransferDirection = LL_USART_DIRECTION_TX_RX;
	USART_InitStruct.HardwareFlowControl = LL_USART_HWCONTROL_NONE;
	USART_InitStruct.OverSampling = LL_USART_OVERSAMPLING_16;
	LL_USART_Init(USART1, &USART_InitStruct);
	LL_USART_ConfigAsyncMode(USART1);
	LL_USART_Enable(USART1);
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void gpio_init(void)
{
	LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

	/* GPIO Ports Clock Enable */
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOI);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOF);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOH);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOG);
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);

	/* Low level by default */
	LL_GPIO_ResetOutputPin(GPIOB, LED_Pin | PB6_Pin | PB9_Pin);

	/* ------------------------
	 * CONTROL SIGNALS TO 6502
	 * ------------------------
	 * High level (not active) by default */
	LL_GPIO_SetOutputPin(GPIOB,
		m_RST_Pin  | m_RD5_Pin   | m_IRQ_Pin  | m_RD4_Pin | m_EXSEL_Pin |
		m_HALT_Pin | m_MPD_Pin);

	/* -------------------------
	 * CONTROL SIGNAL FROM 6502
	 * -------------------------
	 * mPHI2 = PHASE 2 CLOCK OUTPUT FROM 6502
	 * mS5   = 6502 ACCESSING TO $A000-$BFFF (LOW ACTIVE)
	 * mS4   = 6502 ACCESSING TO $8000-$9FFF (LOW ACTIVE)
	 * mD1XX = 6502 ACCESSING TO PBI $D100-$D1FF (LOW ACTIVE)
	 * mCCTL = 6502 ACCESSING TO $D500-$D5FF/$DE00-$DEFF/$DF00-$DFFF (LOW ACTIVE)
	 * mRW   = 6502 R/_W SIGNAL (Read = 1, Write = 0)
	 */
	GPIO_InitStruct.Pin =
		m_PHI2_Pin | m_S5_Pin   | m_S4_Pin |
		m_D1XX_Pin | m_CCTL_Pin | m_RW_Pin;

	GPIO_InitStruct.Mode = LL_GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
	LL_GPIO_Init(GPIOI, &GPIO_InitStruct);

	/* ----------------------------
	 * ADDRESS BUS FROM 6502 - 16BIT
	 * ---------------------------- */
	GPIO_InitStruct.Pin =
		m_A0_Pin  | m_A1_Pin  | m_A2_Pin  | m_A3_Pin  |
		m_A4_Pin  | m_A5_Pin  | m_A6_Pin  | m_A7_Pin  |
		m_A8_Pin  | m_A9_Pin  | m_A10_Pin | m_A11_Pin |
		m_A12_Pin | m_A13_Pin | m_A14_Pin | m_A15_Pin;

	GPIO_InitStruct.Mode = LL_GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
	LL_GPIO_Init(GPIOC, &GPIO_InitStruct);

	/* ----------------------
	 * DATA BUS FROM/TO 6502
	 * ---------------------- */
	GPIO_InitStruct.Pin =
		m_D0_Pin | m_D1_Pin | m_D2_Pin | m_D3_Pin |
		m_D4_Pin | m_D5_Pin | m_D6_Pin | m_D7_Pin;
	GPIO_InitStruct.Mode = LL_GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
	LL_GPIO_Init(GPIOG, &GPIO_InitStruct);

	/* ------------------------
	 * CONTROL SIGNALS TO 6502
	 * ------------------------
	 * mRST   = RESET 6502 (LOW ACTIVE)
	 * mRD5   = Accessing Cartridge Area $A000-$BFFF (LOW ACTIVE)
	 * mRD4   = Accessing Cartridge Area $8000-$9FFF (LOW ACTIVE)
	 * mIRQ   = External IRQ requested TBD  (LOW ACTIVE)
	 * mEXSEL = Internal RAM Access Disable (LOW ACTIVE)
	 * mHALT  = HALT 6502 (LOW ACTIVE DMA STEAL CYCLES)
	 * mMPD   = INTERNAL MATH PACK ROM DISABLE ($D800-$DFFF 2K)
	 */
	GPIO_InitStruct.Pin =
		LED_Pin    | m_RST_Pin   | m_RD5_Pin   | m_IRQ_Pin  |
		m_RD4_Pin  | m_EXSEL_Pin | m_HALT_Pin  | m_MPD_Pin;

	/* Miscellaneous pins for STM32F4 bootup */
	GPIO_InitStruct.Pin |= PB6_Pin | PB9_Pin;

	GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
	GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
	LL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	/* SPI Chip SELECT Config */
	GPIO_InitStruct.Pin =
		SPI_SEL0_GPIO_Pin | SPI_SEL1_GPIO_Pin |
		SPI_SEL2_GPIO_Pin | SPI_SEL3_GPIO_Pin;
	GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
	GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_UP; /* All devices start deselected */
	LL_GPIO_Init(SPI_SEL0_GPIO_Port, &GPIO_InitStruct);
}


static void spi_core_config(LL_SPI_InitTypeDef *spi, uint32_t prescaler, uint32_t cpol, uint32_t cpha)
{
	if (spi != NULL)
	{
		spi->BaudRate = prescaler;
		spi->ClockPolarity = cpol;
		spi->ClockPhase = cpha;
		LL_SPI_Init(SPI1, spi);
		LL_SPI_SetStandard(SPI1, LL_SPI_PROTOCOL_MOTOROLA);
	}
}

static void spi_init(void)
{
	LL_GPIO_InitTypeDef GPIO_InitStruct;

	/* Peripherl Clock enable */
	LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_SPI1);

	/* SPI1 GPIO Config */
	GPIO_InitStruct.Pin = SPI1_MISO_Pin | SPI1_MOSI_Pin | SPI1_SCK_Pin;
	GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
	GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
	GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
	GPIO_InitStruct.Alternate = LL_GPIO_AF_5;
	LL_GPIO_Init(SPI1_MISO_Port, &GPIO_InitStruct);

	/* SPI Core Config */
	SPI_InitStruct.TransferDirection = LL_SPI_FULL_DUPLEX;
	SPI_InitStruct.Mode = LL_SPI_MODE_MASTER;
	SPI_InitStruct.DataWidth = LL_SPI_DATAWIDTH_8BIT;
	SPI_InitStruct.NSS = LL_SPI_NSS_SOFT;
	SPI_InitStruct.BitOrder = LL_SPI_LSB_FIRST;
	SPI_InitStruct.CRCCalculation = LL_SPI_CRCCALCULATION_DISABLE;
	SPI_InitStruct.CRCPoly = 7;

	spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV8, LL_SPI_POLARITY_LOW, LL_SPI_PHASE_1EDGE);
}

static void banner(void)
{
	DBG_I("SPI65 SOFT CORE BOARD\r\n");
	DBG_I("(C) RetroBit Lab 2019/2020 written by Gianluca Renzi <icjtqr@gmail.com>\r\n");
}

/**
  * @brief  Theory of operation:
  *
  * 6502 Computers when accessing to specific address ($D500-$D$D5FF or
  * $DE00-$DEFF, or $DF00-$DFFF) is trying to talk with a SPI device
  *
  * This software intercept the memory access to those address to configure
  * the SPI scheme with a compatible mode, and enables the SPI Hardware
  * in the STM32 Core.
  *
  *
  * @retval int
  */


static inline void spi_setup_ctrl(void)
{
	volatile int cpol = (SPI_CONTROL_REGISTER & CPOL) >> 1;
	volatile int cpha = (SPI_CONTROL_REGISTER & CPHA) >> 0;
	volatile uint8_t reg = SPI_STATUS_REGISTER;
	spi_cpha = cpha;
	spi_cpol = cpol;
	spi_core_config(&SPI_InitStruct, spi_prescaler,
		cpol == 1 ? LL_SPI_POLARITY_LOW : LL_SPI_POLARITY_HIGH,
		cpha == 0 ? LL_SPI_PHASE_1EDGE : LL_SPI_PHASE_2EDGE);

	if (cpol) reg |= (CPOL); else reg &= ~(CPOL);
	if (cpha) reg |= (CPHA); else reg &= ~(CPHA);

	SPI_STATUS_REGISTER |= reg;
}

static inline void spi_setup_clock(void)
{
	volatile int clock = (SPI_CLK_DIVISOR_REGISTER & 0x07);
	spi_prescaler = clock;
	switch(clock)
	{
		case 0:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV2,
				spi_cpol, spi_cpha);
		case 1:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV4,
				spi_cpol, spi_cpha);
		case 2:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV8,
				spi_cpol, spi_cpha);
		case 3:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV16,
				spi_cpol, spi_cpha);
		case 4:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV32,
				spi_cpol, spi_cpha);
		case 5:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV64,
				spi_cpol, spi_cpha);
		case 6:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV128,
				spi_cpol, spi_cpha);
		case 7:
			spi_core_config(&SPI_InitStruct, LL_SPI_BAUDRATEPRESCALER_DIV256,
				spi_cpol, spi_cpha);
		default:
			break;
	}
}

static inline void spi_setup_slave(void)
{
	volatile int slave = (SPI_SLAVE_SELECT_REGISTER & 0x0F);
	volatile uint8_t slaves[] = { 0, 1, 2, 4, 8 };
	volatile int i;
	volatile uint8_t reg = SPI_SLAVE_SELECT_REGISTER;
	volatile int found = 0;

	/* Only one slave at time! 0 (no sel), 1, 2, 4, 8 are valid values! */
	for (i = 0; i < 5; i++)
	{
		if (slave == slaves[i]) { found = 1; break; }
	}

	if (found)
	{
		if (slave == 0)
			return;
		spi_csel = slave;
		reg &= ~(0x0F);
		reg |= slave;
		SPI_SLAVE_SELECT(slave);
	}
	else
	{
		/* Invalid SLAVE number */
		reg &= ~(0x0F);
	}
	SPI_SLAVE_SELECT_REGISTER = reg;
}

int main(void)
{
	uint16_t addr;
	uint8_t data;
	uint8_t c;

	_write_ready(SYSCALL_NOTREADY); // printf is not functional here

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();
	/* Configure the system clock */
	SystemClock_Config();

	/* Initialize all configured peripherals */
	gpio_init();

	/* keep 6502 CPU on RESET as soon as possible */
	CPU_RESET_ASSERT;

	spi_init();
	LL_SPI_Disable(SPI1);

	/* Configure USART1 for 115200 8N1 */
	usart_config(115200);
	_write_ready(SYSCALL_READY); // printf is functional from now on...

	GREEN_LED_ON; // Means board is alive!

	// Start READING FROM DATABUS!
	SET_DATA_MODE_IN

	// Not needed if using FreeRTOS!
	__disable_irq();

	banner();

	mdelay(500);

	GREEN_LED_OFF; // Now starts with led off. Only accessing external RAM will blink!

#ifndef ATARI_PBI_DEVICE
	SPI_ENABLED = 1;
#endif

	/* Now it's time to put 6502 CPU OUT OF RESET */
	CPU_RESET_DEASSERT;

	while (1)
	{

		// wait for phi2 high
		// Wait for a valid chip select pin
		while (!((c = CONTROL_IN) & PHI2))
			;

		if (!(c & CCTL))
		{
			if (SPI_ENABLED)
			{
				// Check for address only if there is a valid state of the PHI2
				// on the bus!
				addr = ADDR_IN & 0x03; // we have only 4 address register space available

				// 6502 CPU Needs to WRITE Data?
				if (!(c & RW))
				{
					// Now READs the data to be written
					data = DATA_IN;
					// read the data bus on falling edge of phi2
					while (CONTROL_IN & PHI2)
						data = DATA_IN;

					switch (addr)
					{
						case 0x00:
							// SPI DATA OUT
							SPI_DATA_OUT = data;
							LL_SPI_Enable(SPI1);
							spi_write();
							break;
						case 0x01:
							// SPI CTRL REGISTER
							SPI_CONTROL_REGISTER = data;
							LL_SPI_Disable(SPI1);
							spi_setup_ctrl();
							break;
						case 0x02:
							// SPI CLOCK DIVISOR
							SPI_CLK_DIVISOR_REGISTER = data;
							LL_SPI_Disable(SPI1);
							spi_setup_clock();
							break;
						case 0x03:
							// SPI SLAVE SELECT
							SPI_SLAVE_SELECT_REGISTER = data;
							LL_SPI_Disable(SPI1);
							spi_setup_slave();
							break;
					}
				}
				else
				{
					// 6502 CPU Needs to READ Data
					SET_DATA_MODE_OUT

					switch (addr)
					{
						case 0x00:
							// SPI DATA IN
							LL_SPI_Enable(SPI1);
							DATA_OUT = spi_read();
							// This clear the TC bit in the STATUS REGISTER
							SPI_STATUS_REGISTER &= ~ TC;
							break;
						case 0x01:
							// SPI STATUS REGISTER
							DATA_OUT = SPI_STATUS_REGISTER;
							break;
						case 0x02:
							// SPI CLOCK DIVISOR
							DATA_OUT = SPI_CLK_DIVISOR_REGISTER;
							break;
						case 0x03:
							// SPI SLAVE SELECT
							DATA_OUT = SPI_SLAVE_SELECT_REGISTER;
							break;
					}

					// wait for phi2 low
					while (CONTROL_IN & PHI2)
						;
					SET_DATA_MODE_IN
				}
			}
		}

#ifdef ATARI_PBI_DEVICE
#warning "ATARI ONLY SETUP! PBI DEVICE"
		if (!(c & D1XX))
		{
			addr = ADDR_IN & 0xFF; // Check D1FF
			if (addr == 0xFF)
			{
				// 6502 CPU Needs to WRITE Data?
				if (!(c & RW))
				{
					// Now READs the data to be written
					data = DATA_IN;
					// read the data bus on falling edge of phi2
					while (CONTROL_IN & PHI2)
						data = DATA_IN;
					switch (data)
					{
						case 0x80:
							SPI_ENABLED = 1; // Now our device is ready
							GREEN_LED_ON;
							break;
						case 0x00:
							SPI_ENABLED = 0; // Disable our device
							GREEN_LED_OFF;
							break;
						default:
							break; // Not for us
					}
				}
			}
		}
#endif
	}

	return 0; // NEVERREACHED
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(const char *c)
{
	DBG_E("%s\n\r", c);
	for (;;)
		;;
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
	/* User can add his own implementation to report the file name and line number,
	 tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
	DBG_E("Error! Wrong parameters value: file %s on line %d\r\n", file, line);
	for (;;)
		;;
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
