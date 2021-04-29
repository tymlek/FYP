#ifndef BIT_MANIP_H_
#define BIT_MANIP_H_

#define SETBIT(x,y) (x |= (y))			// Set bit y in byte x
#define CLEARBIT(x,y) (x &= (~y))		// Clear bit y in byte x
#define TOGGLEBIT(x,y) (x ^= (y))		// Toggle bit y in byte x
#define CHECKBIT(x,y) (x & (y))			// Check bit y in byte x

#endif /* BIT_MANIP_H_ */