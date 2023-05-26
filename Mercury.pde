public class Mercury{
int x, y;
float angle;
float orbitRadiusA;
float orbitRadiusB;
float size;

public Mercury(float angle, float size, float orbitRadiusA, float orbitRadiusB){
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
  drawMercury();

  angle += 0.04; // Controls the speed of the orbit
}
public void drawMercury() {
   fill(#D8D8D8); // Gray color for Mercury
   float mercurySize = size;

    // Draw Mercury as a circle
    circle(x, y, mercurySize);
    fill(#808080); // Darker gray color for details
    ellipse(x, y, mercurySize, mercurySize - 10);
    fill(#808080); 
    ellipse(x, y, mercurySize-10, mercurySize);
}
}
