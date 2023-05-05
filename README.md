# (NoFish)

(Roman)
18-224/624 Spring 2023 Final Tapeout Project

## Overview

Cryptographic accelator for a example algorithem. The algorithem uses substitution boxes and was an intro to cryptography for myself, loosely based off blowfish. Key and word size are both limited to 16 bits. Entry to key and intxt register are SIPO interfaces. Output is single hexadecimal value from one of 4 16 bit types (key, intxt, decrypt intext, encrypt intext)

## How it Works

Combinational calculation of sbox and P keys done through xor. 

To add images, upload them into the repo and use the following format to embed them in markdown:

## Inputs/Outputs

(describe what each of the 12 input and 12 output pins are used for; )
2 bit input - mode select
4 bit input - hexidecimal output select
1 bit input - 0/1 for key/intxt entry
1 bit input - key ready, this tells selected SIPO register to shift in a bit

8 bits of output for 7 segment display 

(if you have any specific dependency on clock frequency; i.e. for visual effects or for an external interface, explain it here.)

## Hardware Peripherals

Dip switches to control input
7 Segment display output 

## Design Testing / Bringup

(explain how to test your design; if relevant, give examples of inputs and expected outputs)
Inputting a key of BEEF and intxt of BEEF will produce the out text of 6301 

(if you would like your design to be tested after integration but before tapeout, provide a Python script that uses the Debug Interface posted on canvas and explain here how to run the testing script)

## Media

(optionally include any photos or videos of your design in action)

## (anything else)

If there is anything else you would like to document about your project such as background information, design space exploration, future ideas, verification details, references, etc etc. please add it here. This template is meant to be a guideline, not an exact format that you're required to follow.
