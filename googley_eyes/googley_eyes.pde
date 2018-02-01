int lowestX = 102;
int highestX = 191;
int lowestY = 112;
int highestY = 186;
int eyeX=150;
int eyeY=150;
void setup(){
  size(500,300);
}
void draw(){
  fill(300,300,300);
ellipse(350,150,150,111);
ellipse(150,150,150,111);

fill(0,0,0);
if(mousePressed){
  println("Xis:"+mouseX);//X is 102 and 191  (left side) (right side)  X:309 & 390
  println("Yis:"+mouseX);//Y is 112 and 117  (left side) (right side) Y:113 & 114
}
if(mouseX>lowestX && mouseX<highestX){
  eyeX=mouseX;
}
if(mouseY> lowestY &&  mouseY<highestY){
  eyeY=mouseY;
}
ellipse(eyeX,eyeY,25,25);
ellipse(eyeX+200,eyeY,25,25);



}