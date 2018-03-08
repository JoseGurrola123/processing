PImage creeper; 
int creeperX= 8;
int creeperY= 284;
void setup(){
size(470,403);
PImage minecraft = loadImage("creeper backgroud.jpg");
minecraft.resize(470, 403);
background(minecraft);
creeper=loadImage("Creeper.png");
creeper.resize(100, 100);
}

void draw(){
  image(creeper, creeperX, creeperY);
  
  if(mousePressed){
   
    if(mouseX>0&&mouseX<45&&mouseY>0&&mouseY<45){
      fill(31,255,32);
    }
    else{
      if(isNear(mouseX,creeperX+28)&&isNear(mouseY,creeperY+28)){
      fill(31,255,32);
      
      }
      else{
    fill(255,31,31);
    
      }
    }
     ellipse(mouseX,mouseY,35,35);
  //println("X: " + mouseX + " Y: " + mouseY);
  // top left X:9 Y:285
  // bottom right X:125 Y: 385
  // X:8 Y:284
}

}
boolean isNear(int a, int b) {
if (abs(a - b) < 10)
     return true;
else
     return false;
}