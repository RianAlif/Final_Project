public class Pluto extends Planet {

  int x1, y1, x2, y2;
  int orbitCount1;
  int orbitCount2;
  float angle1 = 0;
  float angle2 = 0;

  public Pluto(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(211, 157, 101); // Brown color for the planet
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(211, 157, 101);
    circle(width/2, height/2, 200);
    
    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Charon
    noStroke();
    fill(#E4E4E4);
    circle(x, y, 100);
    
    //Nix
    noStroke();
    fill(#999999);
    circle(x1, y1, 18);
    
    //Hydra
    noStroke();
    fill(#818181);
    circle(x2, y2, 8);
    
  }

  @Override
    public void moonOrbit() {
      float centerX = width / 2;
      float centerY = height / 2;
  
    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-510) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB-410) * sin(-angle));
    
    x1 = (int) (centerX + (orbitRadiusA-190) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB-200) * sin(-angle1));
    
    x2 = (int) (centerX + (orbitRadiusA) * cos(-angle2));
    y2 = (int) (centerY + (orbitRadiusB-20) * sin(-angle2));
    
    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-510) * 2, (orbitRadiusB-410) * 2);
    if (angle >= 2 * PI) {
        orbitCount++;
        angle = 0; // Reset the angle for the next orbit
    }
    
    ellipse(centerX, centerY, (orbitRadiusA-190) * 2, (orbitRadiusB-200) * 2);
    if (angle1 >= 2 * PI) {
        orbitCount1++;
        angle1 = 0; // Reset the angle for the next orbit
    }
    
    ellipse(centerX, centerY, (orbitRadiusA) * 2, (orbitRadiusB-20) * 2);
    if (angle2 >= 2 * PI) {
        orbitCount2++;
        angle2 = 0; // Reset the angle for the next orbit
    }
  
    // Draw the Moon
    drawMoon();

    angle += speed*1500; // Controls the speed of the orbit
    angle1 += (speed*1500)/3.92;
    angle2 += (speed*1500)/5.96;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Pluto Orbit Count: " + orbitCount, 100, 380);
    textSize(20);
    text("(For Mrs.Novillo ONLY)", 100, 400);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Charon Orbit Count: " + orbitCount, 150, 60);
    text("Nix Orbit Count: " + orbitCount1, 150, 100);
    text("Hydra Orbit Count: " + orbitCount2, 150, 140);
  }
  
  @Override 
  public void resetPosition() {
  angle = 0; // Reset the angle
  angle1 = 0;
  angle2 = 0;
  orbitCount = 0; // Reset the orbit count
  }
}
