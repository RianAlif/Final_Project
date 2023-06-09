public class Neptune extends Planet {

  int x1, y1, x2, y2, x3, y3, x4, y4;
  int orbitCount1;
  int orbitCount2;
  int orbitCount3;
  int orbitCount4;
  float angle1 = 0;
  float angle2 = 0;
  float angle3 = 0;
  float angle4 = 0;

  public Neptune(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#3a75e4);
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(#3a75e4);
    circle(width/2, height/2, 200);

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Naiad
    fill(#B9B7B6);
    circle(x, y, size - 30);

    //Galatea
    fill(#EAC1C3);
    circle(x1, y1, size - 10);

    //Larissa
    fill(#B6B6B6);
    circle(x2, y2, size -10);

    //Proteus
    fill(#858585);
    circle(x3, y3, size + 5);

    //Triton
    fill(#EEB7B7);
    circle(x4, y4, size + 20);
  }

  @Override
    public void moonOrbit() {
    float centerX = width / 2;
    float centerY = height / 2;

    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-400) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB-400) * sin(-angle));

    x1 = (int) (centerX + (orbitRadiusA-300) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB-300) * sin(-angle1));

    x2 = (int) (centerX + (orbitRadiusA-230) * cos(-angle2));
    y2 = (int) (centerY + (orbitRadiusB-230) * sin(-angle2));

    x3 = (int) (centerX + (orbitRadiusA) * cos(-angle3));
    y3 = (int) (centerY + (orbitRadiusB-50) * sin(-angle3));

    x4 = (int) (centerX + (orbitRadiusA+500) * cos(angle4));
    y4 = (int) (centerY + (orbitRadiusB+500) * sin(angle4));

    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-400) * 2, (orbitRadiusB-400) * 2);
    if (angle >= 2 * PI) {
      orbitCount++;
      angle = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-300) * 2, (orbitRadiusB-300) * 2);
    if (angle1 >= 2 * PI) {
      orbitCount1++;
      angle1 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-230) * 2, (orbitRadiusB-230) * 2);
    if (angle2 >= 2 * PI) {
      orbitCount2++;
      angle2 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA) * 2, (orbitRadiusB-50) * 2);
    if (angle3 >= 2 * PI) {
      orbitCount3++;
      angle3 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+500) * 2, (orbitRadiusB+100) * 2);
    if (angle4 >= 2 * PI) {
      orbitCount4++;
      angle4 = 0; // Reset the angle for the next orbit
    }

    // Draw the Moon
    drawMoon();

    angle += speed*300; // Controls the speed of the orbit
    angle1 += (speed*300)/1.43;
    angle2 += (speed*300)/1.93;
    angle3 += (speed*300)/3.86;
    angle4 += (speed*300)/20.13;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Neptune Orbit Count: " + orbitCount, 100, 340);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Naiad Orbit Count: " + orbitCount, 150, 60);
    text("Galatea Orbit Count: " + orbitCount1, 150, 100);
    text("Larissa Orbit Count: " + orbitCount2, 150, 140);
    text("Proteus Orbit Count: " + orbitCount3, 150, 180);
    text("Triton Orbit Count: " + orbitCount4, 150, 220);
  }
  
  @Override 
  public void resetPosition() {
  angle = 0; // Reset the angle
  angle1 = 0;
  angle2 = 0;
  angle3 = 0;
  angle4 = 0;
  orbitCount = 0; // Reset the orbit count
  }
}
