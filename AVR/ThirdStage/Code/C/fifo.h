#ifndef FIFO_H_
#define FIFO_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <inttypes.h>
#include <stdbool.h>

/* Queue structure */
#define FIFO_ELEMENTS 16
#define FIFO_SIZE (FIFO_ELEMENTS + 1)

void Fifo_Init(void);

bool Fifo_Put(uint8_t new_element);

bool Fifo_Get(uint8_t* next_element);

#ifdef __cplusplus
}
#endif

#endif /* FIFO_H_ */