Star[] s = new Star[1000];

void setup(){
  size(600,600);
  noStroke();
  for (int i = 0; i< s.length; i++){
    s[i] = new Star();
  }
  for (int i = 999; i< s.length; i++){
    s[i] = new OddballParticle();
  }
}
void draw(){
  background (0);
  for (int i = 0; i < s.length; i++){
    s[i].show();
    s[i].drift();
  }
}


class Star{
  double myX, myY, mySpeed,myAngle;
  int myColor;
  Star(){
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = 255;
  }
  void show(){
    fill(myColor);
    rect((float)myX, (float)myY, 3,3);
  }
  void drift(){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
  }
}
class OddballParticle extends Star{
  OddballParticle(){
    myX = myY =250;
    myColor = #EDD456;
    mySpeed = 1;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 25,25);
  }
  void drift(){
  if (mouseX>myX){
   myX = myX+(int)(Math.random()*5)-1;
} else{
  myX = myX+(int)(Math.random()*5)-3;
}
  if (mouseY>myY){
   myY = myY+(int)(Math.random()*5)-1;
} else{
  myY = myY+(int)(Math.random()*5)-3;
}
  }
}
