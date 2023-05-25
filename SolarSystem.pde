PImage backgroundImage;
int x, y;
Planets earth = new Planets(23.5, 20, 260, 160);
  
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
  drawEarth();
  earth.orbit();
}

void drawEarth() {
  fill(#0966f5);
  float earthSize = earth.size;

  // Draw the Earth as a circle with added details
  circle(x, y, earthSize);
  fill(#19E700);
  float detailSize = earthSize / 2;

  // Draw details on the Earth using smaller circles
  circle(x - detailSize +6, y - detailSize + 6, detailSize);
  circle(x + detailSize -6, y + detailSize -6, detailSize);
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
