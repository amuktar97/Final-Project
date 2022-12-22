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
  song1 = minim.loadFile("../FreeWare Music/ Music/Beat_Your_Competition.mp3"); //able to pass absolute path, file name & extension, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup 
//
void draw() {}//End draw
//
void keyPressed() {
  if ( key=='J' || key=='j'); 
}//End keyPressed
//
void mouseClicked() {}//End mousePressed
//
//End Main Program