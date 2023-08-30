  EXAMPLE : myservo.attach(D4, 500, 2400); // these last to parameters are needed for the servo to spin at almost exaact 180 degrees.
                                min   max

Parameters
servo: a variable of type Servo

pin: the number of the pin that the servo is attached to

min (optional): the pulse width, in microseconds, corresponding to the minimum (0 degree) angle on the servo (defaults to 544)

max (optional): the pulse width, in microseconds, corresponding to the maximum (180 degree) angle on the servo (defaults to 2400)