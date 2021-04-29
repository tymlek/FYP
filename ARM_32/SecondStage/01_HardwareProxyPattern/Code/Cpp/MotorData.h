#ifndef MotorData_H
#define MotorData_H

#include "HWProxyExample.h"

//-----------------------------------------------------------------------------

struct MotorData {
	uint8_t on_off;
	DirectionType direction;
	unsigned int speed;
	uint_fast8_t errorStatus;
	uint_fast8_t noPowerError;
	uint_fast8_t noTorqueError;
	uint_fast8_t BITError;
	uint_fast8_t overTemperatureError;
	uint_fast8_t reservedError1;
	uint_fast8_t reservedError2;
	uint_fast8_t unknownError;
};

//-----------------------------------------------------------------------------

#endif