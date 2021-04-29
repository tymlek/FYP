#include "fifo.h"

// fifo structure
static uint8_t fifo[FIFO_SIZE];
static uint8_t fifo_in;
static uint8_t fifo_out;

//-----------------------------------------------------------------------------

void Fifo_Init(void) {
  fifo_in = fifo_out = 0;
}

//-----------------------------------------------------------------------------

bool Fifo_Put(uint8_t new_element) {
  if(fifo_in == ((fifo_out - 1 + FIFO_SIZE) % FIFO_SIZE)) {
	return false; /* fifo full*/
  }

  fifo[fifo_in] = new_element;

  fifo_in = (fifo_in + 1) % FIFO_SIZE;

  return true; // No errors
}

//-----------------------------------------------------------------------------

bool Fifo_Get(uint8_t *next_element) {
  if(fifo_in == fifo_out)	{
	  return false; /* fifo Empty - nothing to get*/
  }

  *next_element = fifo[fifo_out];

  fifo_out = (fifo_out + 1) % FIFO_SIZE;

  return true; // No errors
}

//-----------------------------------------------------------------------------