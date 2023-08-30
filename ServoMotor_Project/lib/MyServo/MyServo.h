# ifndef MyServo_H
# define MyServo_H

class MyServo
{
    public:
    MyServo(int pin);
    void setup();
    void update(long now);
    void setAngle(int angle);
    private:
    enum ServoState{
        off,
        accelerate,
        topSpeed,
        deaccelerate
    };
    const static long _noiseCancelTimer = 10;
    int _pin;
    ServoState _servoState;


};