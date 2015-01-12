#!/bin/bash
echo shutdown on button press. 
echo waiting...
/usr/local/bin/gpio mode 1 out
/usr/local/bin/gpio write 1 1
/usr/local/bin/gpio wfi 7 falling
echo "shutdown in progress" | wall

halt

