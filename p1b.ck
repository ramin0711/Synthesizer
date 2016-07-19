/* My Awesome 5-sine Interference ChucK Program
by Ramin Anushiravani, July, 2016
I picked the frequencies 500, 502, 300, 305, and 315 because they
interact in a way that it makes sound like a alien ship is about to land!
*/
SinOsc s1 => Gain mix => dac; // One sine oscillator
SinOsc s2 => mix; // 2nd sine oscillator into mixer
SinOsc s3 => mix; // 3rd sine oscillator into mixer
SinOsc s4 => mix; // 4th sine oscillator into mixer
SinOsc s5 => mix; // 5th sine oscillator into mixer

0.2  => mix.gain; // make sure we don't overload
385  => s1.freq; // Set their frequencies
0.15 => s1.gain; // set their gains
380  => s2.freq; 
0.16 => s2.gain;
411  => s3.freq;
0.13 => s3.gain;
425  => s4.freq; 
0.13 => s4.gain;
415  => s5.freq; 
0.19 => s5.gain;
20.0 :: second => now; // let them run for 20 seconds