PImage backgroundImage;
int x, y;
Mercury mercury = new Mercury(7, 8, 150, 60);
Venus venus = new Venus(3.395, 16, 210, 110);
Earth earth = new Earth(23.5, 20, 260, 160);
  
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
  drawSun();
  earth.orbit();
  venus.orbit();
  mercury.orbit();
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
