/**
  ******************************************************************************
  * @file    stm8s_it.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all peripherals interrupt service 
  *          routine.
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
//#include "stm8s_it.h"

#include "stm8s_it.h"
#include "stm8s.h"
#include "global_var.h"
#include "stdlib.h"
#include "string.h"
#include "stdio.h"
#include "STM8S003F3.h"

INTERRUPT_HANDLER(NonHandledInterrupt, 25)
{
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */
}



INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 {
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */

	if(f.g_ultrasonic_timeout==1){
		if(ultrasonic_count_var++>=100)
		{	
			f.g_ultrasonic_timeout=0;
			//f.g_check_input_status_F = 1;
		}
	}
	
	
	/* Cleat Interrupt Pending bit */
 // TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
   TIM4_SR = 0X00;
 }

int buff_subscrpt;
/**
  * @brief  UART2 RX interrupt routine.
  * @param None
  * @retval
  * None
  */
 INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
{
    /* In order to detect unexpected events during development,
       it is recommended to set a breakpoint on the following instruction.
    */
		//if(f.g_serial_data_received_F == 0)
		{
		//	serial_buff[buff_subscrpt++] = UART2_ReceiveData8();
			//	if(buff_subscrpt>=71){f.g_serial_data_received_F=1;buff_subscrpt=0;}
		}
}


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/