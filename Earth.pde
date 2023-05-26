public class Earth{
int x, y;
float angle;
float orbitRadiusA;
float orbitRadiusB;
float size;

public Earth(float angle, float size, float orbitRadiusA, float orbitRadiusB){
  this.angle = angle;
  this.orbitRadiusA = orbitRadiusA;
  this.orbitRadiusB = orbitRadiusB;
  this.size = size;
}
public void orbit() {
  float centerX = width / 2;
  float centerY = height / 2;

  // Calculate the new position of the Earth
  x = (int) (centerX + orbitRadiusA * cos(-angle));
  y = (int) (centerY + orbitRadiusB * sin(-angle));
  
  // Draw the ellipse representing Earth's orbit
  noFill();
  stroke(#666666);
  ellipse(centerX, centerY, orbitRadiusA * 2, orbitRadiusB * 2);
  
  // Draw the Earth
  drawEarth();

  angle += 0.01; // Controls the speed of the orbit
}
public void drawEarth() {
  fill(#0966f5);
  float earthSize = size;

  // Draw the Earth as a circle with added details
  circle(x, y, earthSize);
  fill(#19E700);
  float detailSize = earthSize / 2;

  // Draw details on the Earth using smaller circles
  circle(x - detailSize +6, y - detailSize + 6, detailSize);
  circle(x + detailSize -6, y + detailSize -6, detailSize);
}
}
