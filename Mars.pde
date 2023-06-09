public class Mars extends Planet {
int x1, y1;
int orbitCount1;
float angle1 = 0;
  public Mars(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#ff5e3a);
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(#ff5e3a);
    circle(width/2, height/2, 200);

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Phobos
    noStroke();
    fill(#c3e9d3);
    circle(x, y, 18);
    
    //Demios
    noStroke();
    fill(#D8925B);
    circle(x1, y1, 10);
  }
  
  @Override
  public void moonOrbit(){
  float centerX = width / 2;
  float centerY = height / 2;
  
    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-100) * cos(angle));
    y = (int) (centerY + (orbitRadiusB-100) * sin(angle));
    
    x1 = (int) (centerX + (orbitRadiusA+130) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB+100) * sin(-angle1));
    
    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-100) * 2, (orbitRadiusB-100) * 2);
    if (angle >= 2 * PI) {
        orbitCount++;
        angle = 0; // Reset the angle for the next orbit
    }
    
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+130) * 2, (orbitRadiusB+100) * 2);
    if (angle1 >= 2 * PI) {
        orbitCount1++;
        angle1 = 0; // Reset the angle for the next orbit
    }
    // Draw the Moon
    drawMoon();
  
    angle += speed*3.75; // Controls the speed of the orbit
    angle1 += speed;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Mars Orbit Count: " + (orbitCount), 100, 180);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Phobos Orbit Count: " + (orbitCount), 150, 60);
    text("Demios Orbit Count: " + (orbitCount1), 150, 100);
  }
  
  @Override 
  public void resetPosition() {
  angle = 0; // Reset the angle
  angle1 = 0;
  orbitCount = 0; // Reset the orbit count
  }
}
