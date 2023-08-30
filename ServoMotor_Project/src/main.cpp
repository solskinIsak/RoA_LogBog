#include <Arduino.h>
#include <Servo.h>

Servo myservo;
int count = 0;
int nextEdge = 180;


void setup() {
  // put your setup code here, to run once:
  myservo.attach(D4, 500, 2400); // these last to parameters are needed for the servo to spin at almost exaact 180 degrees.
  myservo.write(0);
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  myservo.write(180);
  delay(850); // testede også 700 milisekunder og 500 milisekunder men jo kortere delay jo mindre præcis var bevægelsesgangen.
  //teorien lyder at der ikke er nok volt for servoenn at arbejde med eftersom at servoenn skal bruge 5V og ESP8266 kun giver 3.3V
  myservo.write(0);
  delay(850);




}