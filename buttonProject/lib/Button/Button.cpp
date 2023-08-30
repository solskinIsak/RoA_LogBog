#include "Button.h"
#include <Arduino.h>

Button::Button(int pin) : _pin(pin), _buttonDown(buttonDown){}
void Button :: setup(long startTime)
{

    pinMode(_pin, INPUT_PULLUP);
    _buttonState = off;

}
        void Button::update(long now)
        {
            switch(_buttonState){
                case off:
                    if(digitalRead(_pin) != _buttonDown) return;
                        _buttonState = push;
                        _nextChangeTime = now + _noiseCancelTimer;
                    
                    break;
                case push:
                    if(now < _nextChangeTime);
                        _buttonState = on;
                        break;
                case on:
                    if(digitalRead(_pin) != HIGH) return;
                        _buttonState = release;
                        _nextChangeTime = now + _noiseCancelTimer;
                    break;
                case release:
                    if(now < _nextChangeTime) return;
                        _buttonState = off;
                        break;
                    
            }
        }
        bool Button :: getButtonState()
        {
            return _buttonState == on || _buttonState == push;
        }
