public class Uranus extends Planet {

  int x1, y1, x2, y2, x3, y3, x4, y4;
  int orbitCount1;
  int orbitCount2;
  int orbitCount3;
  int orbitCount4;
  float angle1 = 0;
  float angle2 = 0;
  float angle3 = 0;
  float angle4 = 0;

  public Uranus(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#8ad1e1);
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(#8ad1e1);
    circle(width/2, height/2, 300);

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Puck
    fill(#CBCBCB);
    circle(x, y, size - 15);

    //Miranda
    fill(#989696);
    circle(x1, y1, size);

    //Umbriel
    fill(#5E5D5D);
    circle(x2, y2, size + 20);

    //Titania
    fill(#896042);
    circle(x3, y3, size + 30);

    //Oberon
    fill(#A68974);
    circle(x4, y4, size + 35);
  }

  @Override
    public void moonOrbit() {
    float centerX = width / 2;
    float centerY = height / 2;

    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-300) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB-300) * sin(-angle));

    x1 = (int) (centerX + (orbitRadiusA-180) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB-180) * sin(-angle1));

    x2 = (int) (centerX + (orbitRadiusA-80) * cos(-angle2));
    y2 = (int) (centerY + (orbitRadiusB-80) * sin(-angle2));

    x3 = (int) (centerX + (orbitRadiusA) * cos(-angle3));
    y3 = (int) (centerY + (orbitRadiusB) * sin(-angle3));

    x4 = (int) (centerX + (orbitRadiusA+100) * cos(-angle4));
    y4 = (int) (centerY + (orbitRadiusB+100) * sin(-angle4));

    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-300) * 2, (orbitRadiusB-300) * 2);
    if (angle >= 2 * PI) {
      orbitCount++;
      angle = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-180) * 2, (orbitRadiusB-180) * 2);
    if (angle1 >= 2 * PI) {
      orbitCount1++;
      angle1 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-80) * 2, (orbitRadiusB-80) * 2);
    if (angle2 >= 2 * PI) {
      orbitCount2++;
      angle2 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA) * 2, (orbitRadiusB) * 2);
    if (angle3 >= 2 * PI) {
      orbitCount3++;
      angle3 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+100) * 2, (orbitRadiusB+100) * 2);
    if (angle4 >= 2 * PI) {
      orbitCount4++;
      angle4 = 0; // Reset the angle for the next orbit
    }

    // Draw the Moon
    drawMoon();

    angle += speed*150; // Controls the speed of the orbit
    angle1 += (speed*150)/1.4;
    angle2 += (speed*150)/4.14;
    angle3 += (speed*150)/8.7;
    angle4 += (speed*150)/13.46;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Uranus Orbit Count: " + orbitCount, 100, 300);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Puck Orbit Count: " + orbitCount, 150, 60);
    text("Miranda Orbit Count: " + orbitCount1, 150, 100);
    text("Umbriel Orbit Count: " + orbitCount2, 150, 140);
    text("Titania Orbit Count: " + orbitCount3, 150, 180);
    text("Oberon Orbit Count: " + orbitCount4, 150, 220);
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
