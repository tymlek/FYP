#include <stdlib.h>
#include <stdio.h>

#include "AcmeO2SensorProxy.h"
#include "AcmeO2Adapter.h"
#include "UltimateO2SensorProxy.h"
#include "UltimateO2Adapter.h"
#include "IO2Sensor.h"

int main(void) {
	AcmeO2SensorProxy acmeSensor;
	AcmeO2Adapter acmeAdapter(&acmeSensor);
	IO2Sensor* io2Sensor = reinterpret_cast<AcmeO2Adapter*>(malloc(sizeof(AcmeO2Adapter)));
	io2Sensor = reinterpret_cast<IO2Sensor*>(&acmeAdapter);
	

	printf("O2 Concentration: %d\n", acmeAdapter.gimmeO2Conc());
	printf("O2 Flow: %d\n", acmeAdapter.gimmeO2Flow());

	printf("O2 Concentration: %d\n",acmeAdapter.gimmeO2Conc());
	printf("O2 Flow: %d\n", acmeAdapter.gimmeO2Flow());
	
	free(io2Sensor);

	while (1) {
		
	}
}