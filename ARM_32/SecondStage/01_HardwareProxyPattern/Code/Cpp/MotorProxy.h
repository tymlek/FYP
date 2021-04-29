#ifndef MotorProxy_H
#define MotorProxy_H

#include "HWProxyExample.h"
#include "MotorData.h"

//-----------------------------------------------------------------------------

/* Class MotorProxy */
class MotorProxy {
public:
	MotorProxy() {
		motorAddr = nullptr;
	}

	~MotorProxy() {
		
	}

	void configure(unsigned int length, unsigned int* location);
	void initialize();

	DirectionType getMotorDirection();
	unsigned int getMotorSpeed();
	unsigned int getMotorState();

	void setMotorSpeed(const DirectionType direction, unsigned int speed);

	void clearErrorStatus();
	void disable();
	void enable();

private:
	unsigned int marshal(const MotorData& mData);
	MotorData unmarshal(unsigned int encodedMData);

	unsigned int* motorAddr;
	unsigned int rotaryArmLength;
};

//-----------------------------------------------------------------------------

#endif