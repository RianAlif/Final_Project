PImage backgroundImage;
int viewNum = 0;
int x, y;

Planet[] planets = new Planet[]{
  new Mercury(0, 8, 190, 110, 0.0415),
  new Venus(0, 18, 240, 150, 0.0162),
  new Earth(0, 20, 290, 190, 0.01),
  new Mars(0, 14, 340, 230, 0.005),
  new Jupiter(0, 60, 480, 340, 0.00085),
  new Saturn(0, 50, 580, 440, 0.00034),
  new Uranus(0, 25, 680, 540, 0.000119),
  new Neptune(0, 25, 750, 590, 0.000061),
  new Pluto(0, 5, 820, 640, 0.000005)
};

AstroidBelt belt = new AstroidBelt();

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
    belt.drawAstroidBelt();
    belt.astroidOrbit();
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
  if (viewNum == 3) {
    planets[1].centerPlanet();
    planets[1].displayMoonOrbitCount();
  }
  if (viewNum == 4) {
    planets[3].centerPlanet();
    planets[3].drawMoon();
    planets[3].moonOrbit();
    planets[3].displayMoonOrbitCount();
  }
  if (viewNum == 5) {
    planets[4].centerPlanet();
    planets[4].drawMoon();
    planets[4].moonOrbit();
    planets[4].displayMoonOrbitCount();
  }
  if (viewNum == 6) {
    planets[5].centerPlanet();
    planets[5].drawMoon();
    planets[5].moonOrbit();
    planets[5].displayMoonOrbitCount();
  }
  if (viewNum == 7) {
    planets[6].centerPlanet();
    planets[6].drawMoon();
    planets[6].moonOrbit();
    planets[6].displayMoonOrbitCount();
  }
  if (viewNum == 8) {
    planets[7].centerPlanet();
    planets[7].drawMoon();
    planets[7].moonOrbit();
    planets[7].displayMoonOrbitCount();
  }
  if (viewNum == 9) {
    planets[8].centerPlanet();
    planets[8].drawMoon();
    planets[8].moonOrbit();
    planets[8].displayMoonOrbitCount();
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
  } else if (((mouseX > planets[2].x && mouseX < planets[2].x+20) || (mouseX <= planets[2].x && mouseX >= planets[2].x-20)) &&
             ((mouseY > planets[2].y && mouseY < planets[2].y+20) || (mouseY <= planets[2].y && mouseY >= planets[2].y-20)) && viewNum == 0) {
    viewNum = 1;
  } else if (((mouseX > planets[0].x && mouseX < planets[0].x+50) || (mouseX <= planets[0].x && mouseX >= planets[0].x-50)) &&
             ((mouseY > planets[0].y && mouseY < planets[0].y+50) || (mouseY <= planets[0].y && mouseY >= planets[0].y-50)) && viewNum == 0) {
    viewNum = 2;
  } else if (((mouseX > planets[1].x && mouseX < planets[1].x+20) || (mouseX <= planets[1].x && mouseX >= planets[1].x-20)) &&
             ((mouseY > planets[1].y && mouseY < planets[1].y+20) || (mouseY <= planets[1].y && mouseY >= planets[1].y-20)) && viewNum == 0) {
    viewNum = 3;
  } else if (((mouseX > planets[3].x && mouseX < planets[3].x+20) || (mouseX <= planets[3].x && mouseX >= planets[3].x-20)) &&
             ((mouseY > planets[3].y && mouseY < planets[3].y+20) || (mouseY <= planets[3].y && mouseY >= planets[3].y-20)) && viewNum == 0) {
    viewNum = 4;
  } else if (((mouseX > planets[4].x && mouseX < planets[4].x+30) || (mouseX <= planets[4].x && mouseX >= planets[4].x-30)) &&
             ((mouseY > planets[4].y && mouseY < planets[4].y+30) || (mouseY <= planets[4].y && mouseY >= planets[4].y-30)) && viewNum == 0) {
    viewNum = 5;
  } else if (((mouseX > planets[5].x && mouseX < planets[5].x+30) || (mouseX <= planets[5].x && mouseX >= planets[5].x-30)) &&
             ((mouseY > planets[5].y && mouseY < planets[5].y+30) || (mouseY <= planets[5].y && mouseY >= planets[5].y-30)) && viewNum == 0) {
    viewNum = 6;
  } else if (((mouseX > planets[6].x && mouseX < planets[6].x+30) || (mouseX <= planets[6].x && mouseX >= planets[6].x-30)) &&
             ((mouseY > planets[6].y && mouseY < planets[6].y+30) || (mouseY <= planets[6].y && mouseY >= planets[6].y-30)) && viewNum == 0) {
    viewNum = 7;
  } else if (((mouseX > planets[7].x && mouseX < planets[7].x+30) || (mouseX <= planets[7].x && mouseX >= planets[7].x-30)) &&
             ((mouseY > planets[7].y && mouseY < planets[7].y+30) || (mouseY <= planets[7].y && mouseY >= planets[7].y-30)) && viewNum == 0) {
    viewNum = 8;
  } else if (((mouseX > planets[8].x && mouseX < planets[8].x+10) || (mouseX <= planets[8].x && mouseX >= planets[8].x-10)) &&
             ((mouseY > planets[8].y && mouseY < planets[8].y+10) || (mouseY <= planets[8].y && mouseY >= planets[8].y-10)) && viewNum == 0) {
    viewNum = 9;
  }
  
  for (int i = 0; i < planets.length; i++)
    planets[i].resetPosition();
}
