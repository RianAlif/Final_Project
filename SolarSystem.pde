int x, y;
int dirX = 2;
int dirY = 2;

  void setup(){
   background(#000000);
   size(1400, 1000);
   
   x = width/2;
   y = height/2;
   
   // SuN
   noStroke();
   fill(#f55b09);
   circle(width/2, height/2, 150);
   fill(#f56d09);
   circle(width/2, height/2, 140);
   fill(#f59409);
   circle(width/2, height/2, 130);
   fill(#f5b509);
   circle(width/2, height/2, 115);
   fill(#f5d109);
   circle(width/2, height/2, 95);
   // CENTER
   fill(#FFEC33);
   circle(width/2, height/2, 70);
   
  }

 void draw(){
 drawEarth();
 orbit();
 }
 
 void drawEarth(){
   fill(#0966f5);
   circle(x + 150, y + 150, 20);
 }
 
 void orbit(){
  frameRate(2);
  float xPos = width/2 + 150;
  float yPos = height/2 - 150;
  
  x = (int) xPos;
  y = (int) yPos;
 }
 
