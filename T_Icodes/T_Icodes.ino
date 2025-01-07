#include "T_Icodes_menu.h"

void setup() {
    setupMenu();

}

void loop() {
    taskManager.runLoop();

}



void CALLBACK_FUNCTION ErrorLog(int id) {
    // TODO - your menu change code this is only a place holder to test and see if we can get this to work
    Serial.println("Callback Triggered: Error Log");
    Serial.println("Log Entry 1: Sensor Fault");
    Serial.println("Log Entry 2: Overheating Detected");
}


void CALLBACK_FUNCTION Log_ReadMe(int id) {
    // TODO - your menu change code
     Serial.println("Callback Triggered: Log ReadMe");
    Serial.println("How to Use Logs:");
    Serial.println("- Use UP/DOWN to navigate.");
    Serial.println("- Press SELECT to view details.");

}


void CALLBACK_FUNCTION SoftModeFunction(int id) {
    // TODO - your menu change code
     Serial.println("Callback Triggered: Soft Mode Function");
    Serial.println("System set to Soft Mode.");
}


void CALLBACK_FUNCTION CurrentError(int id) {
    // TODO - your menu change code
    Serial.println("Callback Triggered: Current Error");
    Serial.println("Displaying Current Error: Error 101");

}


void CALLBACK_FUNCTION Temperature(int id) {
    // TODO - your menu change code
    Serial.println("Callback Triggered: Temperature");
    Serial.println("Temperature Range: 20°C - 25°C");
}


void CALLBACK_FUNCTION PressureValues(int id) {
    // TODO - your menu change code
    Serial.println("Callback Triggered: Pressure Values");
    Serial.println("Pressure Sensor 1: 75 Pa");
    Serial.println("Pressure Sensor 2: 80 Pa");
}


void CALLBACK_FUNCTION PressureData(int id) {
    // TODO - your menu change code
    Serial.println("Callback Triggered: Pressure Data");
    Serial.println("Pressure Range: 50 - 100 Pa");
}
