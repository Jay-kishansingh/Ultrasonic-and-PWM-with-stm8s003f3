#ifndef ULTRASONIC_H_
#define ULTRASONIC_H_

#define TRIG_PIN GPIO_PIN_2
#define ECHO_PIN GPIO_PIN_3

void delay_us(uint16_t us) {
    while (us--) {
        nop();
    }
}


//int readUltrasonic(void);
//long microsecondsToCentimeters(long microseconds);

#endif