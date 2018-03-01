PImage donkey;     
PImage tail;
boolean gameOver=false;
int tailX;
int tailY;
import ddf.minim.*;
AudioSample sound1;  
AudioSample sound2;
void setup(){
  Minim minim = new Minim(this); 
  sound1 = minim.loadSample("shiny-objects.wav");
  sound2 = minim.loadSample("homer-doh.wav");
  size(400,600);
 donkey = loadImage("Donkey.jpg");     
 donkey.resize(width,height);
background(donkey);     
tail = loadImage("donkeyTail.png");
tail.resize(50,200);

  
}
void draw(){

 if(mouseX>0&&mouseX<45&&mouseY>0&&mouseY<45){
      background(donkey);   
 }
 else{
   background(200,200,200);
 }
 rect(0,0,45,45);
  if(!gameOver){
    if(mousePressed){
  if(mouseX>336&&mouseX<389&&mouseY>284&&mouseY<386){   
    sound1.trigger();   
  }
  else{
    sound2.trigger(); 
  }
  gameOver=true;
    tailX=mouseX;
    tailY=mouseY;}
  //game over
  //show donkey+tail
}else{
background(donkey);
    image(tail, tailX, tailY);
}
}