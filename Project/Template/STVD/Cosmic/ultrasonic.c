#include "stm8s.h"
#include "ultrasonic.h"
#include "global_var.h"


int readUltrasonic(void){
	TRIG_LOW;
	delay_ms(0.002);
	TRIG_HIGH;
	delay_ms(0.01);
	TRIG_LOW;
	if(GPIO_ReadInputPin(GPIOD, GPIO_PIN_3) == HIGH){
		f.g_ultrasonic_count=1;
		duration = 0 ;
	}
	if((GPIO_ReadInputPin(GPIOD, GPIO_PIN_3) == LOW)&&(f.g_ultrasonic_count==1)){
		f.g_ultrasonic_count=0;
		duration = ultrasonic_count_var;
		ultrasonic_count_var = 0;
	}
	if(duration>0){
		cm = microsecondsToCentimeters(duration);
	}
	return cm;
}

long microsecondsToCentimeters(long microseconds) {
   return microseconds / 29 / 2;
}

*/