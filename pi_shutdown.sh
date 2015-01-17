#!/bin/bash


#turn on LED connected to wiring pin 1
/usr/local/bin/gpio mode 18 out
/usr/local/bin/gpio write 18 1

#wait for button press on wiring pin 7
/usr/local/bin/gpio wfi 20 rising

#broadcast message to all connected
echo "shutdown in progress" | wall

#shut down the pi
halt
#the LED will go out when its safe to turn off power

