#include <Arduino.h>
#include <MoistSensor.h>
#include <MoistSensor.cpp>
#include <WiFiServerController.h>
#include <WiFiServerController.cpp>
#include <AccelStepper.h>

int pin = D0;
long lastUpdateTime;
long interval; 
long currentTime;
char ssid[] = "INSERT WIFI NAME (EVT PHONE)";
char password[] = "INSERT WIFI PASSWORD";
int targetPosition = 0;
const int maxDistance = 12500;

#define IN1 5
#define IN2 4
#define IN3 14
#define IN4 12

MoistSensor moist(pin); // Opretter en instans af MoistSensor-klassen
WiFiServerController server(ssid,password); // Opretter en instans af WiFiServerController-klassen
AccelStepper stepper(AccelStepper::HALF4WIRE, IN1, IN3, IN2, IN4); // Opretter en instans af AccelStepper-klassen

void setup() {
  Serial.begin(115200);
  server.begin(); //Initialiserer wifi serveren
  lastUpdateTime = 0;
  interval = 500; 

  stepper.setMaxSpeed(1500); // Indstil den maksimale hastighed for stepper-motoren
  stepper.setAcceleration(750); // Indstil accelerationen for stepper-motoren
  stepper.moveTo(0); // Indstil stepper-motorens målposition til 0
  
}

void loop() 
{
  server.handleClient(); // håndterer klient anmodninger
  currentTime = millis(); // sætter currentTime til antal millisekunder siden NodeMCU'en blev tændt
  
  if (currentTime - lastUpdateTime >= interval) {
    lastUpdateTime = currentTime;           /* minusser currentTime med lastUpdateTime og tjekker om,
                                               det er større end eller lig med intervallet, hvis det er, så opdateres fugtigheden */
    moist.update();

    if (moist.getIsWet()) {
      server.setIsOn(false);            // Tjekker om moist er våd, hvis den er så sætter den setIsOn til false og stopper stepper-motoren
      stepper.moveTo(-maxDistance);
    } 
    else if(server._isMoving){
      if(targetPosition <= maxDistance){
      targetPosition += 500;
      stepper.moveTo(targetPosition);
      server.move(false);
      }
    }
    else if(server.getIsOn()){

      if(targetPosition <= maxDistance){
      stepper.moveTo(targetPosition);
      
      if (stepper.distanceToGo() == 0) {
      targetPosition += 500;
      } 
      }
    }
  }
  stepper.run();
}



