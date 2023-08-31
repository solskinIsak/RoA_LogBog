/*
    This sketch demonstrates how to set up a simple HTTP-like server.
    The server will set a GPIO pin depending on the request
      http://server_ip/gpio/0 will set the GPIO2 low,
      http://server_ip/gpio/1 will set the GPIO2 high
    server_ip is the IP address of the ESP8266 module, will be
    printed to Serial when the module is connected.
*/

#include <ESP8266WiFi.h>

#ifndef STASSID
#define STASSID "Isak"
#define STAPSK "tigligestille"
#endif

const char* ssid = STASSID;
const char* password = STAPSK;

// Create an instance of the server
// specify the port to listen on as an argument
WiFiServer server(80);

void setup() {
  Serial.begin(115200);

  // prepare LED
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(D6, OUTPUT);
  pinMode(D8, OUTPUT);
  digitalWrite(D6, 0);
  digitalWrite(D8, 0);
  digitalWrite(LED_BUILTIN, 0);

  // Connect to WiFi network
  Serial.println();
  Serial.println();
  Serial.print(F("Connecting to "));
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(F("."));
  }
  Serial.println();
  Serial.println(F("WiFi connected"));

  // Start the server
  server.begin();
  Serial.println(F("Server started"));

  // Print the IP address
  Serial.println(WiFi.localIP());
}

void loop() {
  // Check if a client has connected
  WiFiClient client = server.accept();
  if (!client) { return; }
  Serial.println(F("new client"));

  client.setTimeout(5000);  // default is 1000

  // Read the first line of the request
  String req = client.readStringUntil('\r');
  Serial.println(F("request: "));
  Serial.println(req);

  // Match the request
  int val;
  int val2;
  int val3;
  if (req.indexOf(F("/gpio/0")) != -1) {
  digitalWrite(LED_BUILTIN, LOW);
  } else if (req.indexOf(F("/gpio/1")) != -1) {
  digitalWrite(LED_BUILTIN, HIGH);
  }else if (req.indexOf(F("/gpio/2")) != -1) {
    digitalWrite(D6, LOW);
  }else if (req.indexOf(F("/gpio/3")) != -1) {
    digitalWrite(D6, HIGH);
  }else if (req.indexOf(F("/gpio/4")) != -1) {
  digitalWrite(D8, LOW);
  }else if (req.indexOf(F("/gpio/5")) != -1) {
  digitalWrite(D8, HIGH);
  } else {
    Serial.println(F("invalid request"));
    val = digitalRead(LED_BUILTIN);
    val2 = digitalRead(D6);
    val3 = digitalRead(D8);
  }

  // Set LED according to the request

  // read/ignore the rest of the request
  // do not client.flush(): it is for output only, see below
  while (client.available()) {
    // byte by byte is not very efficient
    client.read();
  }

  // Send the response to the client
  // it is OK for multiple small client.print/write,
  // because nagle algorithm will group them into one single packet
  client.print(F("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>\r\nGPIO is now "));
  client.print((val) ? F("high") : F("low"));
  client.print(F("<br><br>Click <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/1'>here</a> to switch LED GPIO off, or <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/0'>here</a> to switch LED GPIO on.</html>"));
  client.print(WiFi.localIP());
  client.print(F("<br><br>Click <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/2'>here</a> to switch LED BLUE off, or <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/3'>here</a> to switch LED BLUE on.</html>"));
   client.print(WiFi.localIP());
  client.print(F("<br><br>Click <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/4'>here</a> to switch LED GREEN off, or <a href='http://"));
  client.print(WiFi.localIP());
  client.print(F("/gpio/5'>here</a> to switch LED GREEN on.</html>"));


  // The client will actually be *flushed* then disconnected
  // when the function returns and 'client' object is destroyed (out-of-scope)
  // flush = ensure written data are received by the other side
  Serial.println(F("Disconnecting from client"));
}