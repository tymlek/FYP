#include <stdlib.h>
#include <stdio.h>
#include "AcmeO2SensorProxy.h"
#include "UltimateO2SensorProxy.h"
#include "IO2Sensor.h"

int main(void) {
	AcmeO2SensorProxy acmeSensor;
	AcmeO2Adapter acmeAdapter;
	IO2Sensor io2Sensor;

	AcmeO2SensorProxy_Init(&acmeSensor);
	AcmeO2Adapter_Init(&acmeAdapter);
	AcmeO2Adapter_configure(&acmeAdapter, &acmeSensor);
	IO2Sensor_Init(&io2Sensor);

	printf("O2 Concentration: %d\n", AcmeO2Adapter_gimmeO2Conc(&acmeAdapter));
	printf("O2 Flow: %d\n", AcmeO2Adapter_gimmeO2Flow(&acmeAdapter));

	printf("O2 Concentration: %d\n",io2Sensor.gimmeO2Conc((IO2Sensor*)&acmeAdapter));
	printf("O2 Flow: %d\n", io2Sensor.gimmeO2Flow((IO2Sensor*)&acmeAdapter));

	while (1) {
		
	}
}