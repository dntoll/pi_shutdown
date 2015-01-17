# pi_shutdown
A shutdown button and LED for headless Raspberry pi

The LED starts to blink when the Pi has been booted up and you can login by ssh

This project depends on wiringpi http://wiringpi.com/the-gpio-utility/

You need a button on wiring pi pin 7
https://www.cl.cam.ac.uk/projects/raspberrypi/tutorials/robot/buttons_and_switches/

You need a resistor and LED on pin 1

Download the script
-------------------

    git clone https://github.com/dntoll/pi_shutdown

Make executable
---------------

    cd pi_shutdown
    chmod +x pi_shutdown.sh
    chmod +x pi_blink.sh

Startup the script on boot
--------------------------

    sudo nano /etc/rc.local

add the following to the end of the file before the exit 0
    
    /home/pi/pi_shutdown/pi_shutdown.sh &
