PImage backgroundImage;
int viewNum = 0;
int x, y;

Planet[] planets = new Planet[]{
  new Mercury(23.5, 8, 190, 110, 0.0415),
  new Venus(23.5, 18, 240, 140, 0.0162),
  new Earth(23.5, 20, 290, 190, 0.01),
  new Mars(23.5, 14, 340, 240, 0.005),
  new Jupiter(23.5, 60, 400, 300, 0.00085),
  new Saturn(23.5, 50, 480, 380, 0.00034),
  new Uranus(23.5, 25, 520, 420, 0.000119),
  new Neptune(23.5, 25, 700, 460, 0.000061)
};
  
void setup() {
  size(1920, 1080);
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
  planets[2].centerPlanet();
  planets[2].drawMoon();
  planets[2].moonOrbit();
  }
  reset();
  
}
  
void drawSun(){
   // Sun
  noStroke();
  fill(#f55b09);
  circle(width / 2, height / 2, 170);
  fill(#f56d09);
  circle(width / 2, height / 2, 160);
  fill(#f59409);
  circle(width / 2, height / 2, 150);
  fill(#f5b509);
  circle(width / 2, height / 2, 135);
  fill(#f5d109);
  circle(width / 2, height / 2, 115);
  // CENTER
  fill(#FFEC33);
  circle(width / 2, height / 2, 90);
}

void reset(){
if (viewNum == 1) {viewNum = 0;
}else if (planets[2].x == mouseX || planets[2].y == mouseY){
   viewNum = 1;
}
}
