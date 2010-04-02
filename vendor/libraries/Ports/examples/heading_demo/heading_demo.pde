// Demo of the Heading Board based on the HDPM01 (with barometer and compass)
// 2010-03-22 <jcw@equi4.com> http://opensource.org/licenses/mit-license.php
// $Id: heading_demo.pde 4887 2010-03-22 23:09:59Z jcw $

#include <Ports.h>
#include <RF12.h> // needed to avoid a linker error :(

HeadingPlug sensor (4);

void setup () {
    Serial.begin(57600);
    Serial.println("\n[heading_demo]");
    sensor.begin();
}

void loop () {
    int pres, temp;
    sensor.readout(temp, pres);

    Serial.print("HDPM ");
    Serial.print(temp);
    Serial.print(' ');
    Serial.println(pres);
    delay(1000);
}
