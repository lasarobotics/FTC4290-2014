11/4/2013 Arthur
--------------------
Welcome to the notes page!  This page will tell you, an official programmer
of the LASA Robotics team, what we HAVE DONE and what we WILL DO.

This is designed to be a conversation, somewhat like endless comments on a blog.
Post...
1) Questions when you have them (and you should),
2) At the end of the day, post what you GOT DONE (emphasis: EVERY DAY).

Place your name(s) and the date at the top of each "post" (see above).

I'll post answers to your questions (I am ALWAYS online),
and check in daily for WHAT YOU NEED TO DO (as I am not here all the time).

Finally, remember to press Ctrl+S often and stay connected to education or AISD-GUEST.

Arthur
Programming Lead
--------------------

11/5/2013 Arthur and Ehsan
--------------------
Today, we successfully tested the robot for the very first time.
It was our first success testing the robot.  It works!  Now we are improving
the way we drive. 

We also programatically fixed a mechanical error with the 
manipulor servos. The direction of the servos was reversed, so when one was
in position 0, the other had to be in 255 to keep the 2 in sync. To fix, we 
took the normalized input and for one servo fed in the input, and for the
other fed in the opposite, 255-the input.

For those of you who were not here today, :(
Tomorrow, please...
1)Start on autonomous.  Find the "Movement Loop", and use the resources you have (look in Docs for pictures)!  Good luck!
2)Hold off on the encoder programming.  Wait until Thursday.
---------------------
11/7/2013 Arthur and Ashwin
---------------------
Today, we fixed encoder issues and worked on autonomous. We encountered a problem when trying to implement the wait time at the beginning.
This is needs to be fixed and we have no idea so get debugging!
---------------------
11/14/2013 Ehsan
---------------------
The log has not been updated in a while, so I though I would write up a weekly update (although this week was only 3 days). Tuesday, we worked
on getting motor encoders setup in code, particularly adding the arm encoder to labview and telling the electronics team to rewire the drive motors onto one motor controller
as without this the encoder code would be much harder to make. Wednesday I was not at robotics, but it seems that they finalized the encoder code and created a "job list" 
for the programming team with different tasks broken into small manageable chunks can be claimed by team members to work on. This helps when people do not know what has been 
going on recently, and no one is there to explain it to them. Finally, today me and Ashwin worked on the IR Detection "Jobs" from the list which involved... making the IR 
detection work! The IR Detection is split up into 9 codes the IR sensor can give off, with 9 being the most left slice of a 180 degree semicircle and 1 being the slice on the extreme right.
This would make 5 more or less dead center, so we thought that if the ir sensor gave us a reading of 5 from the beacon we would be lined up with the box and we could place the block. We 
discovered in robotics however that 5 was actually a much larger range and the block was being placed as soon as the robot detected 5, which was way off target. To fix this we decided to 
implement this
1. Find 5, store this encoder value
2. Keep on going forward till you find 6
3. Subtract the encoder count at 6 from the encoder count at 5, this gives you the length in encoder counts of 5
4. Take half this length and move backwards that amount
This essentially places you in the middle of the region the robot is detecting as 5, which we hope is more accurate than the edge of 5. This was implemented by me after robotics, and is pending testing
tomorrow, 11/15/2013

---------------------
11/15/2013 Arthur
---------------------
This week, we finished autonomous initialization, IR detection, started the schematic
for 5998, and started on improving the way our drivers drive.  Another note: we had tried
(for over four man-hours) to get exponential drive to work -- a way of smooth driving --
but miserably failed in dire exhaustion.

Till next week,
Arthur
---------------------