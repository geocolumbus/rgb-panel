// testshapes demo for RGBmatrixPanel library.
// Demonstrates the drawing abilities of the RGBmatrixPanel library.
// For 32x64 RGB LED matrix.

// NOTE THIS CAN ONLY BE USED ON A MEGA! NOT ENOUGH RAM ON UNO!

#include <arduino.h>
#include <Adafruit_GFX.h>   // Core graphics library
#include <RGBmatrixPanel.h> // Hardware-specific library

#define OE   9
#define LAT 10
#define CLK 11
#define A   A0
#define B   A1
#define C   A2
#define D   A3

RGBmatrixPanel matrix(A, B, C, D, CLK, LAT, OE, false, 64);


void setup() {
    matrix.begin();
    matrix.setTextSize(1);

    Serial.begin(9600);
}

String s = "";
int cpos = 0;
String displayTime = "";
String newTime = "--:-- __";
String displayDate = "";
String newDate = "xxx xxxx";
unsigned long minuteStart = millis();

void loop() {
    // Manage the clock
    if (millis() - minuteStart > 60000) {
        minuteStart = millis();
        Serial.write("tick");
        //TODO
    }

    // Handle inputs
    if (Serial.available() > 0) {
        String newString = Serial.readString();
        if (newString.charAt(0) == '^') {
            if (newString.charAt(1) == 't') {
                newTime.remove(0);
                newTime.concat(newString.substring(2, 10));
                minuteStart = millis();
            } else if (newString.charAt(1) == 'd') {
                newDate.remove(0);
                newDate.concat(newString.substring(2, 10));
            }
        }
        else  {
            s.remove(0);
            s.concat("           ");
            s.concat(newString);
            cpos = 0;
        }

    } else {

        // Update time
        if (!displayTime.equals(newTime)) {
            matrix.setTextColor(matrix.Color333(0, 0, 0));
            matrix.setCursor(9, 2);
            matrix.print(displayTime);

            displayTime.remove(0);
            displayTime.concat(newTime);

            matrix.setTextColor(matrix.Color333(3, 1, 0));
            matrix.setCursor(9, 2);
            matrix.print(displayTime);
        }

        // Update date
        if (!displayDate.equals(newDate)) {
            matrix.setTextColor(matrix.Color333(0, 0, 0));
            matrix.setCursor(9, 12);
            matrix.print(displayDate);

            displayDate.remove(0);
            displayDate.concat(newDate);

            matrix.setTextColor(matrix.Color333(3, 1, 0));
            matrix.setCursor(9, 12);
            matrix.print(displayDate);
        }

        // Handle the scroll
        if (cpos < -s.length() * 8) {
            cpos = 0;
        }
        matrix.setTextWrap(false);
        matrix.setTextColor(matrix.Color333(0, 3, 0));
        matrix.setCursor(cpos, 22);
        matrix.print(s);
        delay(10);
        matrix.setTextColor(matrix.Color333(0, 0, 0));
        matrix.setCursor(cpos, 22);
        matrix.print(s);
        cpos = cpos - 1;
    }
}
