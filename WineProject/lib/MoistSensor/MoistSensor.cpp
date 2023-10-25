#include "Arduino.h"
#include "MoistSensor.h"

MoistSensor::MoistSensor(int pin) // Kontruktør som tager en pin som parameter
: _pin(pin), _isWet(false) // Initialiserer pin og _isWet
{}

void MoistSensor::update()
{
  int sensor_analog = analogRead(_pin); // Læser værdien fra sensoren
  float moisture_percentage = ( 100 - ( (sensor_analog/1023.00) * 100 ) ); // Beregner procentdelen af fugtighed som en float.
  if(moisture_percentage>5.00) /* hvis fugtigheden er over 5% er sensoren våd (sjovt nok)
                                  men den er sat så lavt for at undgå at vinen spilder
                                  da det tager et øjeblik for sensoren at registrere at den er våd under ophældningen.*/
  {
    _isWet = true;
  }
  else
  {
    _isWet = false;
  }
}

bool MoistSensor::getIsWet()
{
    return _isWet;
}