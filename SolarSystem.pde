PImage backgroundImage;
int viewNum = 0;
int x, y;

Planet[] planets = new Planet[]{
  new Mercury(7, 8, 150, 70, 0.04),
  new Venus(3.395, 18, 210, 110, 0.016),
  new Earth(23.5, 20, 260, 160, 0.01),
  new Mars(25, 14, 310, 210, 0.028),
  new Jupiter(1.3, 220 ,400, 300, 0.128);
};
  
void setup() {
  size(1820, 980);
  backgroundImage = loadImage("background.jpg");
  backgroundImage.resize(width, height);
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(backgroundImage);
  // NB image is wider than screen
  int x = frameCount % backgroundImage.width;
  copy(backgroundImage, x, 0, backgroundImage.width, height, 0, 0, backgroundImage.width, height);
  int x2 = backgroundImage.width - x;
  if (x2 < width) {
    copy(backgroundImage, 0, 0, backgroundImage.width, height, x2, 0, backgroundImage.width, height);
  }
  if (viewNum == 0){
  drawSun();
  for (int i = 0; i < planets.length; i++)
       planets[i].orbit();
  }
  if (viewNum == 1){
  drawSun();
  planets[2].orbit();
  }
  reset();
  
}
  
void drawSun(){
   // Sun
  noStroke();
  fill(#f55b09);
  circle(width / 2, height / 2, 100);
  fill(#f56d09);
  circle(width / 2, height / 2, 90);
  fill(#f59409);
  circle(width / 2, height / 2, 80);
  fill(#f5b509);
  circle(width / 2, height / 2, 65);
  fill(#f5d109);
  circle(width / 2, height / 2, 45);
  // CENTER
  fill(#FFEC33);
  circle(width / 2, height / 2, 20);
}

void reset(){
if (planets[2].x == mouseX || planets[2].y == mouseY)
   viewNum = 1;
}
