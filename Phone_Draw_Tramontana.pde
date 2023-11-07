// Using phone's Gyrometer to draw - by Arjun

import tramontana.library.*;
import websockets.*;

Tramontana t;
float roll;
float pitch;
float yaw;



void setup(){
 size(700,700);
 frameRate (60); 
 t = new Tramontana(this,"192.168.1.119");
  //background(255);
  background (#e2ded9); 
    t.subscribeAttitude(250);
 
}
void draw(){
 
  float a = random(0, 255); 
float b = random(0, 255); 
float c = random(0, 255); 

noStroke(); 

  fill(#dd7269, 50);
  
if (pitch>-5000){
ellipseMode (CENTER);
translate (width/2, height/2); 
ellipse (roll*250, pitch*500, 50, 50); 
}

  }



void onAttitudeEvent(String ipAddress, float newRoll, float newPitch, float newYaw)
{
  roll  =  newRoll;
  pitch =  newPitch;
  yaw   =  newYaw;
  
}
