public class Planets{
float angle;
float orbitRadiusA;
float orbitRadiusB;
float size;

public Planets(float angle, float size, float orbitRadiusA, float orbitRadiusB){
  this.angle = angle;
  this.orbitRadiusA = orbitRadiusA;
  this.orbitRadiusB = orbitRadiusB;
  this.size = size;
}
public void orbit() {
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
}
