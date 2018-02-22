PImage donkey;     
PImage tail;
boolean gameOver=false;
int tailX;
int tailY;
void setup(){
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
if(mousePressed){
    image(tail, mouseX, mouseY);
    gameOver=true;
    tailX=mouseX;
    tailY=mouseY;
  //game over
  //show donkey+tail
}
}