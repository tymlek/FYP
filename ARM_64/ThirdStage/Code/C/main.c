// Tymoteusz Lekszycki
// 04.05.2016

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <math.h>
#include <time.h>
#include <unistd.h>

#include <mysql/mysql.h>

#include "mcp3008.h"

#define HOST_ADDR "localhost"
#define USER_NAME "root"
#define USER_PASSWD "pass"

int32_t getReading(MCP3008* adc, int32_t analogPin, double refVoltage) {
    int32_t temp = 0;
    int val = 0;
    
    val = MCP3008_analogRead(adc,analogPin);    // Two first readings discarted
    usleep(60000);                              // due tofluctuations
    val = MCP3008_analogRead(adc,analogPin);
    usleep(60000);
    val = MCP3008_analogRead(adc,analogPin);

    temp = round((refVoltage * 100.0 * val) / 1023) + 6;

    printf("Current temperature: %dC\n",temp);

    return temp;
}

void writeToDB(MYSQL* con, int32_t reading) {
    char* statement[100];
    char* reading_str[5];
    
    sprintf(reading_str,"%d", reading);
    
    strcpy(statement,"insert into tempData "
            "(tDate,tTime,tLoc,temp) values "
            "(date(current_date()),time(current_time()),'Bedroom',");
    strcat(statement,reading_str);
    strcat(statement, ")");
    if (mysql_query(con,statement)) {
        fprintf(stderr, "Error writing to database\n");
        mysql_close(con);
        return;
    }
    
}

void readFromDB(MYSQL* con) {
    if (!mysql_query(con, "select * from tempData")) {
        MYSQL_RES* result = mysql_store_result(con);
        
        if (result != NULL) {
            MYSQL_ROW row;
            
            while (row = mysql_fetch_row(result)) {
                printf("%s\t%s\t%s\t%s\n",row[0],row[1],row[2],row[3]);
            }
            mysql_free_result(result);
        }
    }
}

int main (int argc, char** argv)
{
    MYSQL* mysql = mysql_init(NULL);
    MCP3008* adc = MCP3008_Create();
    
    double refVoltage = 0;
    int numOfReadings = 0;
    int readingFrequency = 0;
    const int32_t analogPin = 0;
    
    
    if (adc != NULL) {
        MCP3008_Init(adc);
    }
    
    if (argc >= 2) {
         readingFrequency = atoi(argv[1]);
    }
    else {
        readingFrequency = 10;  // in seconds
    }
    
    if (argc >= 3) {
        numOfReadings = atoi(argv[2]);
    }
    else {
        numOfReadings = 5;
    }
    
    if (argc >= 4) {
        refVoltage = atof(argv[3]);
    }
    else {
        refVoltage = 3.29;   // in Volts
    }
    
    if (mysql == NULL) {
        fprintf(stderr, "Error creating connection to database\n");
        exit(1);
    }
    
    // Create a connection
    if (mysql_real_connect(mysql,HOST_ADDR,USER_NAME,USER_PASSWD,"test_db",0,NULL,0) == NULL) {
        fprintf(stderr, "Error connecting to database\n");
        exit(1);
    }
    
    printf("Running...\n");
    
    int reading = 0;
    reading = getReading(adc,analogPin,refVoltage);
    writeToDB(mysql,reading);
    
    for (int i = 0; i < (numOfReadings - 1); ++i) {
        sleep(readingFrequency);
        
        // Get reading from sensor
        reading = getReading(adc,analogPin,refVoltage);
        
        // Execute query
        writeToDB(mysql,reading);
    }
    
    readFromDB(mysql);
    
    mysql_close(mysql);
    MCP3008_Delete(adc);

    return 0;
}
