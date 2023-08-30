# ifndef BUTTON_H
# define BUTTON_H


class Button
{
    public:
        Button(int pin);
        void setup(long startTime);
        void update(long now);
        bool getButtonState();
    private:
        enum ButtonState{
            off,
            push,
            on,
            release
        };
        const static long _noiseCancelTimer = 10;
        int _pin;
        ButtonState _buttonState;
        long _nextChangeTime;
        bool _buttonDown;



};

# endif // BUTTON_H

