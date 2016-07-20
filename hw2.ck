//   RissetBeats.ck
/*  First done by Jean Claude Risset at Bell Labs  */  
// He discusses this and much more in a seminal article:
//   "Computer Music: Why?" WERGO 2033-2, 1985
//     (I bet you can find it by Googling it)
// ChucK Version, 2015 by P. Cook
// for Kadenze/Stanford/CCRMA
// Physics-Based Sound Synthesis/DSP Course
//
//   YOUR COMMENTS AND THOUGHTS HERE
// it looks like the frequency of each source is changed by a 0.1 starting at 100. 
// there are 7 harmonics. One harmonic is added one at a time and it's giving at that
// beating sound which evolving into more interesting sound as we're adding more harmonics
//
//

BlitSaw s[7];       // Make a bank of "Saw" Oscillators
Gain mix => dac;   // mixer for output gain control
1.0/7.0 => mix.gain;  // make sure total output < 1.0

for (int i; i < 7; i++)  {     // set up all of the oscillators
    7 => s[i].harmonics;       // number of harmonics to build saw wave
    s[i] => mix;               // connect to dac
    if(i!= 6){
    <<< (100.0+(0.1*i)) => s[i].freq >>>;} // set frequencies to 100, 100.1, etc.}
// Your job:   Change one (or more) base frequency(s) here
//  a little, hear the result, think, discuss...
//   YOUR COMMENTS AND THOUGHTS HERE

   else{
    for (int j; j < 7;j++){
        <<< 101+(0.5*j) => s[6].freq >>>;
        // I'm changing the frequency of s[6] incrementally, 
        // it's around the same frequency as the original one.
        // I like it because it gives these a faster changing 
        // of the dyanamics to the sound and it kind of change the 
        // background rhytm as well. bizz bizz bizzzz bizz bizz bizzzz
     } 
    }
}


20.0 :: second => now;

//   END
