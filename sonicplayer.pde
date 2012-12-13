import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
Minim minim;
AudioPlayer player1;

int pwmValue;

void setup() {
    //size(400, 600);
    minim = new Minim(this);
    player1 = minim.loadFile("thepreakness.mp3");
    println(Arduino.list()); // NEED TO KNOW WHAT PORT
    arduino = new Arduino(this, Arduino.list()[0], 57600); // CHANGE ARRAY INDEX TO MATCH PORT NUMBER
    arduino.pinMode(13, Arduino.OUTPUT);
    arduino.pinMode(11, Arduino.OUTPUT);
    player1.play();
    player1.loop();
}

void draw() {
    //part1();
    size(400, 600);
  }


/*void part1(){
    player1.play();
    player1.loop();
}
*/
  
    
void stop(){
  player1.close();
  minim.stop();
  super.stop();
}
    
    println(pwmValue);
    arduino.analogWrite(11, pwmValue); // MUST BE ON A PIN WITH A ~. NO NEED TO SET PINMODE
  }


