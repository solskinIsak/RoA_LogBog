#include "WiFiServerController.h"

// Konstruktør for WiFiServerController-klassen
WiFiServerController::WiFiServerController(char* ssid, char* password)
    : server(80), _ssid(ssid), _password(password), _isOn(false), _isMoving(false) {}

// Initialiser WiFi-serveren og opret forbindelse til det angivne netværk
void WiFiServerController::begin() {
    setupWiFi();
    server.begin();
}

// Håndter indgående klientanmodninger
void WiFiServerController::handleClient() {
    WiFiClient client = server.accept(); // Changed from available() to accept()
    if (!client) {
        return;
    }

    client.setTimeout(5000);

    String req = client.readStringUntil('\r');

    
    // Kontroller anmodningen for specifikke URL'er og udfør handlinger
    if (req.indexOf("/gpio/0") != -1) {
        setIsOn(false);

    } else if (req.indexOf("/gpio/1") != -1) {
        setIsOn(true);
    } 

    else if (req.indexOf("/gpio/2") != -1) {
        move(true);
    } 
        // Ryd headeren for anmodningen
    while (client.available()) {
        client.read();
    }

        // Send svar til klienten i form a HTTP-respons med HTML-indhold
    client.print("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>\r\nWine is now ");
    client.print("<br><br>Click <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/2'>here</a> to move a little, or <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/1'>here</a> to start sequence, or <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/0'>here</a> to end sepqunce.</html>");

    client.stop(); // Luk klientforbindelsen
}
    // Opsætning af WiFi-forbindelse
void WiFiServerController::setupWiFi() {
   

    Serial.println();
    Serial.println();
    Serial.print(F("Connecting to "));
    Serial.println(_ssid);

    // Opret forbindelse til WiFi-netværket
    WiFi.mode(WIFI_STA);
    WiFi.begin(_ssid, _password);

    // Vent på at der er oprettet forbindelse til WiFi-netværket
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(F("."));
    }
    Serial.println();
    Serial.println(F("WiFi connected"));

    Serial.println(WiFi.localIP());
}

    // indstiller _isOn variablen for at indikerer status (tændt eller slukket)
void WiFiServerController::setIsOn(bool status) {
    _isOn = status;
}
    // Henter værdien af _isOn variablen
bool WiFiServerController::getIsOn() {
    return _isOn;
}
    //indstil isMoving variablen for at indikerer bevægelse
void WiFiServerController::move(bool isMoving) {
    _isMoving = isMoving;
}