#include <stdlib.h>
#include "MotorProxy.h"

//-----------------------------------------------------------------------------

static unsigned int marshal(const struct MotorData mData);
static struct MotorData unmarshal(unsigned int encodedMData);

//-----------------------------------------------------------------------------

void MotorProxy_Init(MotorProxy* const me) {
	me->motorAddr = NULL;
}

//-----------------------------------------------------------------------------

void MotorProxy_Cleanup(MotorProxy* const me) {

}

//-----------------------------------------------------------------------------

DirectionType MotorProxy_accessMotorDirection(MotorProxy* const me) {
	MotorData mData;

	if (!me->motorAddr) {
		return NO_DIRECTION;
	}

mData = unmarshal(*me->motorAddr);

return mData.direction;
}

//-----------------------------------------------------------------------------

unsigned int MotorProxy_accessMotorSpeed(MotorProxy* const me) {
	MotorData mData;

	if (!me->motorAddr) {
		return 0;
	}

	mData = unmarshal(*me->motorAddr);

	return mData.speed;
}

//-----------------------------------------------------------------------------

unsigned int MotorProxy_accessMotorState(MotorProxy* const me) {
	MotorData mData;

	if (!me->motorAddr) {
		return 0;
	}

	mData = unmarshal(*me->motorAddr);

	return mData.errorStatus;
}

//-----------------------------------------------------------------------------

void MotorProxy_clearErrorStatus(MotorProxy* const me) {
	if (!me->motorAddr) {
		return;
	}

	*me->motorAddr &= 0xFF;
}

//-----------------------------------------------------------------------------

void MotorProxy_configure(MotorProxy* const me, unsigned int length,
	unsigned int* location) {
	me->rotaryArmLength = length;
	me->motorAddr = location;
}

//-----------------------------------------------------------------------------

void MotorProxy_disable(MotorProxy* const me) {
	if (!me->motorAddr) {
		return;
	}

	*me->motorAddr &= 0xFFFE;
}

//-----------------------------------------------------------------------------

void MotorProxy_enable(MotorProxy* const me) {
	if (!me->motorAddr) {
		return;
	}

	*me->motorAddr |= 1;
}

//-----------------------------------------------------------------------------

void MotorProxy_initialize(MotorProxy* const me) {
	MotorData mData;

	if (!me->motorAddr) {
		return;
	}

	mData.on_off = 1;
	mData.direction = NO_DIRECTION;
	mData.speed = 0;
	mData.errorStatus = 0;
	mData.noPowerError = 0;
	mData.noTorqueError = 0;
	mData.BITError = 0;
	mData.overTemperatureError = 0;
	mData.reservedError1 = 0;
	mData.reservedError2 = 0;
	mData.unknownError = 0;

	*me->motorAddr = marshal(mData);
}

//-----------------------------------------------------------------------------

void MotorProxy_writeMotorSpeed(MotorProxy* const me,
	const DirectionType direction,
	unsigned int speed) {
	MotorData mData;

	double dPi;
	double dArmLength;
	double dSpeed;
	double dAdjSpeed;

	if (!me->motorAddr) {
		return;
	}

	mData = unmarshal(*me->motorAddr);
	mData.direction = direction;

	if (me->rotaryArmLength > 0) {
		dSpeed = speed;
		dArmLength = me->rotaryArmLength;
		dAdjSpeed = dSpeed / 2.0 / 3.14159 / dArmLength * 10.0;
		mData.speed = (int)dAdjSpeed;
	}
	else {
		mData.speed = speed;
	}

	*me->motorAddr = marshal(mData);
}

//-----------------------------------------------------------------------------

static unsigned int marshal(const struct MotorData mData) {
	unsigned int deviceCmd;

	deviceCmd = 0;
	if (mData.on_off) {
		deviceCmd |= 1;
	}

	if (mData.direction == FORWARD) {
		deviceCmd |= (1 << 2);
	}
	else if (mData.direction == REVERSE) {
		deviceCmd |= (1 << 1);
	}

	if (mData.speed < 32 && mData.speed >= 0) {
		deviceCmd |= (mData.speed << 3);
	}

	if (mData.errorStatus) {
		deviceCmd |= (1 << 8);
	}

	if (mData.noPowerError) {
		deviceCmd |= (1 << 9);
	}

	if (mData.noTorqueError) {
		deviceCmd |= (1 << 10);
	}

	if (mData.BITError) {
		deviceCmd |= (1 << 11);
	}

	if (mData.overTemperatureError) {
		deviceCmd |= (1 << 12);
	}

	if (mData.reservedError1) {
		deviceCmd |= (1 << 13);
	}

	if (mData.reservedError2) {
		deviceCmd |= (1 << 14);
	}

	if (mData.unknownError) {
		deviceCmd |= (1 << 15);
	}

	return deviceCmd;
}

//-----------------------------------------------------------------------------

static struct MotorData unmarshal(unsigned int encodedMData) {
	MotorData mData;
	int temp;

	mData.on_off = encodedMData & 1;
	temp = (encodedMData & (3 << 1)) >> 1;

	if (temp == 1) {
		mData.direction = REVERSE;
	}
	else if (temp == 2) {
		mData.direction = FORWARD;
	}
	else {
		mData.direction = NO_DIRECTION;
	}

	mData.speed = (encodedMData & (31 << 3)) >> 3;
	mData.errorStatus = (encodedMData & (1 << 8));
	mData.noPowerError = (encodedMData & (1 << 9));
	mData.noTorqueError = (encodedMData & (1 << 10));
	mData.BITError = (encodedMData & (1 << 11));
	mData.overTemperatureError = (encodedMData & (1 << 12));
	mData.reservedError1 = (encodedMData & (1 << 13));
	mData.reservedError2 = (encodedMData & (1 << 14));
	mData.unknownError = (encodedMData & (1 << 15));

	return mData;
}

//-----------------------------------------------------------------------------

MotorProxy* MotorProxy_Create(void) {
	MotorProxy* me = (MotorProxy*)malloc(sizeof(MotorProxy));

	if (me != NULL) {
		MotorProxy_Init(me);
	}

	return me;
}

//-----------------------------------------------------------------------------

void MotorProxy_Destroy(MotorProxy* const me) {
	if (me != NULL) {
		MotorProxy_Cleanup(me);
	}

	free(me);
}

//-----------------------------------------------------------------------------