int x, y;
float angle = 0;
float orbitRadius = 150;

void setup() {
  background(#000000);
  size(1400, 1000);

  x = width / 2;
  y = height / 2;
}

void draw() {
  background(#000000);
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
  circle(width / 2, height / 2, 150);
  fill(#f56d09);
  circle(width / 2, height / 2, 140);
  fill(#f59409);
  circle(width / 2, height / 2, 130);
  fill(#f5b509);
  circle(width / 2, height / 2, 115);
  fill(#f5d109);
  circle(width / 2, height / 2, 95);
  // CENTER
  fill(#FFEC33);
  circle(width / 2, height / 2, 70);
}
void orbit() {
  float centerX = width / 2;
  float centerY = height / 2;

  // Calculate the new position of the Earth
  x = (int) (centerX + orbitRadius * cos(angle));
  y = (int) (centerY + orbitRadius * sin(angle));

  // Draw the Earth
  drawEarth();

  angle += 0.01; // Controls the speed of the orbit
}
