PImage backgroundImage;
int x, y;
float angle = 23.5;
float orbitRadiusA = 260;
float orbitRadiusB = 160;

void setup() {
  size(1820, 980);
  backgroundImage = loadImage("background.jpg");
  backgroundImage.resize(width, height);

  x = width / 2;
  y = height / 2;
}

void draw() {
  background(#backgroundImage);
  drawSun();
  drawEarth();
  orbit();
}

void drawEarth() {
  fill(#0966f5);
  float earthSize = 20;

  // Draw the Earth as a circle with added details
  circle(x, y, earthSize);
  fill(#19E700);
  float detailSize = earthSize / 2;

  // Draw details on the Earth using smaller circles
  circle(x - detailSize +6, y - detailSize + 6, detailSize);
 // circle(x + detailSize -5, y - detailSize +5, detailSize/2); 
 // circle(x - detailSize, y + detailSize, detailSize);
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
void orbit() {
  float centerX = width / 2;
  float centerY = height / 2;

  // Calculate the new position of the Earth
  x = (int) (centerX + orbitRadiusA * cos(angle));
  y = (int) (centerY + orbitRadiusB * sin(angle));
  
  // Draw the ellipse representing Earth's orbit
  noFill();
  stroke(#666666);
  ellipse(centerX, centerY, orbitRadiusA * 2, orbitRadiusB * 2);
  // Draw the Earth
  drawEarth();

  angle += 0.01; // Controls the speed of the orbit
}
