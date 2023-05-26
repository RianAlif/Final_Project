public class Venus{
int x, y;
float angle;
float orbitRadiusA;
float orbitRadiusB;
float size;

public Venus(float angle, float size, float orbitRadiusA, float orbitRadiusB){
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
  drawVenus();

  angle += 0.016; // Controls the speed of the orbit
}
public void drawVenus() {
  fill(#EDBFBF); // Pink color for Venus
  float venusSize = size;
  
  // Draw Venus as a circle
  circle(x, y, venusSize);
  fill(#F18938); //Darker pink color for details
  ellipse(x, y, venusSize, venusSize-10);
  
  
  // Draw details on Venus using smaller circles
 // circle(x + 2 - detailSize + 2, y - detailSize + 2, detailSize);
  //circle(x + 2 + detailSize - 2, y + detailSize - 2, detailSize);
}
}
