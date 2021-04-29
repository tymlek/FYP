/* 
 * File:   mcp3008.hpp
 * Author: Tymoteusz Lekszycki
 *
 * Created on 06 May 2016, 10:24
 */

#ifndef MCP3008_HPP
#define	MCP3008_HPP

#include <wiringPiSPI.h>
#include <stdint.h>
#include <stdlib.h>

#define buffSize 3

typedef struct MCP3008 MCP3008;
struct MCP3008 {
    int32_t channel;
    int32_t speed;
    uint8_t spiData[buffSize];
}; 

MCP3008* MCP3008_Create(void) {
    MCP3008* me = (MCP3008*)malloc(sizeof(MCP3008));
    
    return me;
}

void MCP3008_Delete(MCP3008* me) {
    if (me != NULL) {
        free(me);
    }
}

void MCP3008_Init(MCP3008* me) {
    me->channel = 0;
    me->speed = 1000000;              // 1 MHz

    if (wiringPiSPISetup(me->channel,me->speed) < 0) {
        exit(1);
    }
}

void MCP3008_config(MCP3008* me, int32_t channel, int32_t speed) {
    me->channel = channel;
    me->speed = speed;

    if (wiringPiSPISetup(channel,speed) < 0) {
        exit(1);
    }
}

int32_t MCP3008_analogRead(MCP3008* me, int32_t analogInPin) {
    uint8_t command;

    command = (0x80 | (analogInPin << 4));

    me->spiData[0] = 1;
    me->spiData[1] = command;
    me->spiData[2] = 0;

    wiringPiSPIDataRW(me->channel,me->spiData,buffSize);

    return (((me->spiData[1] << 8) | me->spiData[2]) & 0x3ff);
}

#endif	/* MCP3008_HPP */

