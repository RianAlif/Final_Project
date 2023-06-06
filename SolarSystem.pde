PImage backgroundImage;
int viewNum = 0;
int x, y;

Planet[] planets = new Planet[]{
  new Mercury(23.5, 8, 220, 140, 0.0415),
  new Venus(23.5, 18, 280, 180, 0.0162),
  new Earth(23.5, 20, 330, 230, 0.01),
 // new Mars(25, 14, 380, 280, 0.005),
 // new Jupiter(1.3, 60, 510, 440, 0.00085)
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
  for (int i = 0; i < planets.length; i++){
       planets[i].orbit();
       planets[i].displayOrbitCount();
  }
  }
  if (viewNum == 1){
  planets[2].centerPlanet();
  planets[2].drawMoon();
  planets[2].moonOrbit();
  planets[2].displayMoonOrbitCount();
  }
  reset();
  
}
  
void drawSun(){
   // Sun
  noStroke();
  fill(#f55b09);
  circle(width / 2, height / 2, 200);
  fill(#f56d09);
  circle(width / 2, height / 2, 190);
  fill(#f59409);
  circle(width / 2, height / 2, 180);
  fill(#f5b509);
  circle(width / 2, height / 2, 165);
  fill(#f5d109);
  circle(width / 2, height / 2, 145);
  // CENTER
  fill(#FFEC33);
  circle(width / 2, height / 2, 120);
}

void reset(){
if (viewNum == 0 && mousePressed){
   viewNum = 1;
}else if (viewNum == 1 && mousePressed)
   viewNum = 0;
}
