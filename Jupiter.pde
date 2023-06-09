public class Jupiter extends Planet {
  int x1, y1, x2, y2, x3, y3;
  int orbitCount1;
  int orbitCount2;
  int orbitCount3;
  float angle1 = 0;
  float angle2 = 0;
  float angle3 = 0;
  public Jupiter(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#ff982b);
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(#ff982b);
    circle(width/2, height/2, 250);

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Io
    fill(#E3B261);
    circle(x, y, size - 50);

    //Europa
    fill(#B8C193);
    circle(x1, y1, size - 45);

    //Ganymede
    fill(#B0C8B9);
    circle(x2, y2, size - 30);

    //Callisto
    fill(#6B7275);
    circle(x3, y3, size - 35);
  }

  @Override
    public void moonOrbit() {
    float centerX = width / 2;
    float centerY = height / 2;

    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-130) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB-130) * sin(-angle));

    x1 = (int) (centerX + (orbitRadiusA-40) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB-60) * sin(-angle1));

    x2 = (int) (centerX + (orbitRadiusA+110) * cos(-angle2));
    y2 = (int) (centerY + (orbitRadiusB+70) * sin(-angle2));

    x3 = (int) (centerX + (orbitRadiusA+350) * cos(-angle3));
    y3 = (int) (centerY + (orbitRadiusB+220) * sin(-angle3));

    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-130) * 2, (orbitRadiusB-130) * 2);
    if (angle >= 2 * PI) {
      orbitCount++;
      angle = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-40) * 2, (orbitRadiusB-60) * 2);
    if (angle1 >= 2 * PI) {
      orbitCount1++;
      angle1 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+110) * 2, (orbitRadiusB+70) * 2);
    if (angle2 >= 2 * PI) {
      orbitCount2++;
      angle2 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+350) * 2, (orbitRadiusB+220) * 2);
    if (angle3 >= 2 * PI) {
      orbitCount3++;
      angle3 = 0; // Reset the angle for the next orbit
    }
    // Draw the Moon
    drawMoon();

    angle += speed*20; // Controls the speed of the orbit
    angle1 += (speed*20)/2;
    angle2 += (speed*20)/4.1;
    angle3 += (speed*20)/9.7;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Jupiter Orbit Count: " + orbitCount, 100, 220);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Io Orbit Count: " + orbitCount, 150, 60);
    text("Europa Orbit Count: " + orbitCount1, 150, 100);
    text("Ganymede Orbit Count: " + orbitCount2, 150, 140);
    text("Callisto Orbit Count: " + orbitCount3, 150, 180);
  }
  
   @Override 
  public void resetPosition() {
  angle = 0; // Reset the angle
  angle1 = 0;
  angle2 = 0;
  angle3 = 0;
  orbitCount = 0; // Reset the orbit count
  }
}
