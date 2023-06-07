PImage backgroundImage;
int viewNum = 0;
int x, y;

Planet[] planets = new Planet[]{
  new Mercury(23.5, 8, 190, 110, 0.0415),
  new Venus(23.5, 18, 240, 150, 0.0162),
  new Earth(23.5, 20, 290, 190, 0.01),
  new Mars(23.5, 14, 340, 230, 0.005),
  new Jupiter(23.5, 60, 420, 310, 0.00085),
  new Saturn(23.5, 50, 520, 410, 0.00034),
  new Uranus(23.5, 25, 620, 510, 0.000119),
  new Neptune(23.5, 25, 690, 560, 0.000061)
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
  if (viewNum == 0) {
    drawSun();
    for (int i = 0; i < planets.length; i++) {
      planets[i].orbit();
      planets[i].displayOrbitCount();
    }
  }
  if (viewNum == 1) {
    planets[2].centerPlanet();
    planets[2].drawMoon();
    planets[2].moonOrbit();
    planets[2].displayMoonOrbitCount();
  }
  if (viewNum == 2) {
    planets[0].centerPlanet();
    planets[0].drawMoon();
    planets[0].displayMoonOrbitCount();
  }
}

void drawSun() {
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

void mouseClicked() {
  if (mouseX > 1490 && mouseX < 1490+160 && mouseY > 760 && mouseY < 760+50 && viewNum != 0) {
    viewNum = 0;
  } else if (((mouseX > planets[2].x && mouseX < planets[2].x+20) || (mouseX < planets[2].x && mouseX > planets[2].x-20)) &&
             ((mouseY > planets[2].y && mouseY < planets[2].y+20) || (mouseY < planets[2].y && mouseY > planets[2].y-20)) && viewNum == 0) {
    viewNum = 1;
  } else if (((mouseX > planets[0].x && mouseX < planets[2].x+20) || (mouseX < planets[0].x && mouseX > planets[2].x-20)) &&
             ((mouseY > planets[0].y && mouseY < planets[2].y+20) || (mouseY < planets[0].y && mouseY > planets[2].y-20)) && viewNum == 0) {
    viewNum = 2;
  }
  for (int i = 0; i < planets.length; i++)
    planets[i].resetPosition();
}
