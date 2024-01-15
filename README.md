# (NoFish)

(Roman)
18-224/624 Spring 2023 Final Tapeout Project

## Overview
Cryptographic accelerator for a symmetric-key block cipher. I created this algorithem mysef and it is loosely based off of Blowfish; it uses substitution boxes and symmetric shifting much like Blowfish. The algorithem opperates on an 16 bit key, which modifies a 16 bit input. Depending on the mode it will output either the cipher text or decrypted. 

## How it Works
The mdule has two input modes, one for the key and the other for the in text.
Using a SIPO shift register, the user manually shifts in a 16 bit key/intext.
Then using some cominational circuitry, the module will calulate the cipher/decrypted text.
The hexadecimal result can be displayed using a hexidecimal key output and switching dip switch inputs.


## Inputs/Outputs
Inputs:

8 bits of input controlled by a dipswitch:

2 bit input - mode select

4 bit input - hexidecimal output select

1 bit input - choose if editing key or in text

1 bit input - ready, tells SIPO regster to shift in a bit 


Outputs:

8 bits of output for 7 segment display 

## Hardware Peripherals
Dip switches to control input

7 Segment display output 

## Design Testing / Bringup
The first piece of this design was making the cryptography algorithem. I tested the algorithem by having it encrypt text, produce a result that matched a hand calculation, and hten decrypt text to ensure the original input was returned. 

After that, I pushed the desgn to an Alchitry Au FPGA Development Board --- connected with Alchitry Io Element Board for inputs. My design work flow was to use Yosys to generated the design and then IceStorm's Iceprog command to synethsize to this specific FPGA and then created the bitstream. 

## Next Steps & Media
I'm hoping to get the chips back from the foundry and test them, will add results when that happens! I plan to also connect this to my arduino and see if I can get a more automated usage out of the chip. 

A few notes on things I wish I had done:
  I wish I had used some of the extra output ports for status LEDs, I think that would make the manual usage much easier.
  I wish I had used some of the extra input ports for shifting in more bits to the SIPO register 
  
I didn't do these things because I ultamtely planned for a computer to interface with the chip, but by making it more human friendly, that would have helped with issues I had in the early debugging phase (espeically when it comes to the FSM bugs I had). 
