
#ifndef global_variable_H
#define global_variable_H
#include "stdio.h"
#define TIM4_PERIOD     255



//timing counter variable for ultrasonic
	extern int ultrasonic_count_var;
	//extern int duration;
	//extern int cm;

typedef struct 
  {    
			unsigned int g_check_input_status_F :1;
			unsigned int g_input_high_sense_F :1;
			unsigned int g_input_low_sense_F :1;
			unsigned int g_ultrasonic_count:1;
			unsigned int g_ultrasonic_timeout:1;
			
  }flag;
extern  flag f;

void sys_init(void);
void sense_IO(void);
void Delay_MS(volatile unsigned long int nCount);

static void TIM4_Config(void);
static void CLK_Config(void);
void GPIO_CONFIG(void);
void _delay_us(volatile unsigned long int nCount);
void APDS9960_Init(void);
uint8_t APDS9960_ReadGesture(void);
void TIM2_setup(void);
void delay_ms (int ms);
void TIM1_setup(void);
//void ADC_Init1(void);

#endif