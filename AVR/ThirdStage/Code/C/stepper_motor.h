#ifndef STEPPER_MOTOR_H_
#define STEPPER_MOTOR_H_

#include <avr/io.h>
#include <util/delay.h>

#define CLOCKWISE			1
#define COUNTERCLOCKWISE	0
#define STEPPER_DELAY		20		// Delay in ms
#define NUM_OF_STEPS		24

#define STEPPER PORTB

struct State {
	uint8_t Out;					// Output
	const struct State *Next[2];	// CW/CCW
};
typedef const struct State State_t;

void Stepper_Init(void);
void Stepper_CW(void);
void Stepper_CCW(void);

#endif /* STEPPER_MOTOR_H_ */