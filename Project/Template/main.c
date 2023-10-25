#include <stm8s.h>
 
#define TRIG_PIN GPIO_PIN_2
#define ECHO_PIN GPIO_PIN_3
#define LED_PIN GPIO_PIN_6
 
// Function to generate a delay in microseconds
void delay_us(uint16_t us) {
    while (us--) {
        // Implement a delay function
    }
}
 
void init_GPIO(void) {
    // Initialize GPIO pins for TRIG, ECHO, and LED
    GPIO_Init(GPIOD, TRIG_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(GPIOD, ECHO_PIN, GPIO_MODE_IN_PU_NO_IT);
    GPIO_Init(GPIOC, LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
}
 
void init_TIM1_PWM(void) {
    TIM1_DeInit();
                
     TIM1_TimeBaseInit(16, TIM1_COUNTERMODE_UP, 1000, 1);
                
     TIM1_OC1Init(TIM1_OCMODE_PWM1, 
                  TIM1_OUTPUTSTATE_ENABLE, 
                  TIM1_OUTPUTNSTATE_ENABLE, 
                  1000, 
                  TIM1_OCPOLARITY_LOW, 
                  TIM1_OCNPOLARITY_LOW, 
                  TIM1_OCIDLESTATE_RESET, 
                  TIM1_OCNIDLESTATE_RESET);
                
    TIM1_CtrlPWMOutputs(ENABLE);
    TIM1_Cmd(ENABLE);
}
 
uint16_t measure_distance(void) {
    // Measure the pulse width on the ECHO pin
    uint32_t pulse_width = 0;
		uint16_t distance;
		
		GPIO_WriteLow(GPIOD, TRIG_PIN);  // Ensure TRIG pin is low initially
    delay_us(2);  // Wait for 2 microseconds (min trigger pulse width)
 
    // Generate a 10us pulse on the TRIG pin
    GPIO_WriteHigh(GPIOD, TRIG_PIN);
    delay_us(10);
    GPIO_WriteLow(GPIOD, TRIG_PIN);
 

    while (!GPIO_ReadInputPin(GPIOD, ECHO_PIN)) {
        // Wait for the echo signal to start
    }
    while (GPIO_ReadInputPin(GPIOD, ECHO_PIN)) {
        // Measure the duration of the echo signal
        pulse_width++;
        delay_us(1);  // You may need to adjust the delay based on your clock frequency
    }
 
    // Calculate the distance based on the pulse width (in microseconds)
    // Speed of sound at 20°C is approximately 343 meters per second
    // Distance = (pulse_width / 2) * (34300 / clock_frequency)
    distance = (uint16_t)((pulse_width / 2) * 0.0343);
 
    return distance;
}

 
void main(void) {
		uint16_t distance, distance_mm;
		uint16_t duty_cycle = 1000;
		
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); // Set the clock frequency
    init_GPIO();
    init_TIM1_PWM();
 
    while (1) {
        distance = measure_distance();
				//distance_mm = distance*10;
        // Adjust LED intensity based on the distance
        if (distance <= 1) {
            duty_cycle = 1000; // LED OFF
				} else if(distance>2 && distance<12) {
						duty_cycle = ((12 - distance) * 100); //Linear mapping to PWM
						// Update PWM duty cycle for the LED
						TIM1_SetCompare1(duty_cycle);
				}
				
        
        delay_us(1000000); // Add a delay for stability
				/*
				if (distance == 2) {
            duty_cycle = 910; // LED OFF
        }
				if (distance == 3) {
            duty_cycle = 820; // LED OFF
        }
				if (distance == 4) {
            duty_cycle = 730; // LED OFF
        }
				if (distance == 5) {
            duty_cycle = 640; // LED OFF
        }
				if (distance == 6) {
            duty_cycle = 550; // LED OFF
        }
				if (distance == 7) {
            duty_cycle = 460; // LED OFF
        }
				if (distance == 8) {
            duty_cycle = 370; // LED OFF
        }
				if (distance == 9) {
            duty_cycle = 280; // LED OFF
        }
				if (distance == 10) {
            duty_cycle = 190; // LED OFF
        }
				if (distance == 11) {
            duty_cycle = 100; // LED OFF
        }
				if (distance == 12) {
            duty_cycle = 0; // LED OFF
        }
				*/
				
				/*
				else if (distance >= 1 && distance <= 2) {
            duty_cycle = 900;
        }
				else if (distance > 2 && distance <= 3) {
            duty_cycle = 800;
        }
				else if (distance > 3 && distance <= 4) {
            duty_cycle = 700;
        }
				else if (distance > 4 && distance <= 5) {
            duty_cycle = 600;
        }
				else if (distance > 5 && distance <= 6) {
            duty_cycle = 500;
        }
				else if (distance > 6 && distance <= 7) {
            duty_cycle = 400;
        }
				else if (distance > 7 && distance <= 8) {
            duty_cycle = 300;
        }
				else if (distance > 8 && distance <= 9) {
            duty_cycle = 200;
        }
				else if (distance > 9 && distance <= 10) {
            duty_cycle = 100;
        }
				else if (distance > 10 && distance <= 11) {
            duty_cycle = 80;
        }
				else if (distance > 11 && distance <= 12) {
            duty_cycle = 50;
        }
				else if (distance > 12 && distance <= 13) {
            duty_cycle = 0;
        }
				*/
				/*
				
				else {
            duty_cycle = 0; // Maximum intensity
        }
				*/

    }
}

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{ 
  
  while (1)
  {
  }
}
#endif