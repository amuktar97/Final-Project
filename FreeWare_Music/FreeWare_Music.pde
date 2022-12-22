//Library: use Sketch / Important Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;  //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare_Music/Music/Beat_Your_Competition.mp3"); //able to pass absolute path, file name & extension, and URL
}//End setup 
//
void draw() {
}//End draw
//
void keyPressed() {
  //Key Board Short Cuts
  //First Play Button
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //Second Play Button, Loop ONCE
  if ( key=='L' || key=='l'  ) song1.loop(1); //Parameter is Parameter is number of repeats
  //Infinite Loop
  if ( key=='I' || key=='i' ) song1.loop(); //Parameter is empty, means infinite looping (could be -1)
  //
  if ( key=='M' || key=='m' ) { //MUTE Button
    //Note: Mute has NO built-in pause button and NO built-in rewind if the song is near the end of the file
    //Note: this MUTE algorithm is not smart
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( song1.isMuted() ) { 
      song1.unmute();
    } else { 
      song1.mute();
    }
  } //End MUTE Button
  //
  //Fast Forward & Fast Reverse
  //Built in Question: 
  if ( key == 'F' || key == 'f') song1.skip( 1000 ); // skip forward 1 second (1000 milliseconds)
  if ( key == 'R' || key == 'R') song1.skip( -1000 ); // skip backwards 1 second, notice negative, (1000 milliseconds)
  //
  //STOP Button
  if ( key == 'S' || key == 's' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }//End STOP Button
}//End keyPressed
//
void mouseClicked() {
}//End mousePressed
//
//End Main Program
