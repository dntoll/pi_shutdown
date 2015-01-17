#!/bin/bash

#turn on LED connected to wiring pin 1
/usr/local/bin/gpio mode 18 out

while true; do
       	/usr/local/bin/gpio write 18 1
	sleep 0.5
	/usr/local/bin/gpio write 18 0
	sleep 0.5
done
