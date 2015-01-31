 #pragma config(Sensor, S1, HTIRS2, sensorI2CCustom)
// IRSeek.c - a simple program to demonstrate how to use the
// HiTechnic IR Seeker V2 sensor. This program requires
// the HTIRS2-driver.h driver provided with RobotC.
//
// You can copy the "drivers" subdirectory and place it
// in the same directory as this source file. if you do,
// you can use the following #include statement to specify
// the path to the driver.
#include "drivers/HTIRS2-driver.h"
// if you use the "drivers/HTIRS2-driver.h" line,
// then you should comment out the following line.
//#include "HTIRS2-driver.h"
// sTextLines is an array of strings - used to keep
// track of if changes to display occur.
string sTextLines[8];
// function prototype
void displayText(int nLineNumber, string cChar, int nValueDC, int nValueAC);

// main task
task main()
{
// dc and ac directional values.
int _dirDC = 0;
int _dirAC = 0;
// DC and AC values from 5 internal detectors.
int dcS1, dcS2, dcS3, dcS4, dcS5 = 0;
int acS1, acS2, acS3, acS4, acS5 = 0;
// we are going to set DSP mode to 1200 Hz.
tHTIRS2DSPMode _mode = DSP_1200;
// attempt to set to DSP mode.
if (HTIRS2setDSPMode(HTIRS2, _mode) == 0)
{
// unsuccessful at setting the mode.
// display error message.
eraseDisplay();
nxtDisplayCenteredTextLine(0, "ERROR!");
nxtDisplayCenteredTextLine(2, "Init failed!");
nxtDisplayCenteredTextLine(3, "Connect sensor");
nxtDisplayCenteredTextLine(4, "to Port 1.");
// make a noise to get their attention.
PlaySound(soundBeepBeep);
// wait so user can read message, then leave main task.
wait10Msec(300);
}
}
