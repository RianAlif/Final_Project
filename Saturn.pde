public class Saturn extends Planet {
  int x1, y1, x2, y2, x3, y3;
  int orbitCount1;
  int orbitCount2;
  int orbitCount3;
  float angle1 = 0;
  float angle2 = 0;
  float angle3 = 0;

  public Saturn(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    // Draw Saturn's body
    fill(211, 157, 101); // Brown color for the planet
    circle(x, y, size);

    // Draw Saturn's ring
    float ringDiameter = size + 60;
    noFill();
    stroke(255, 255, 0); // Yellow color for the ring
    ellipse(x, y, ringDiameter, ringDiameter);
    ellipse(x, y, ringDiameter-5, ringDiameter-5);
    ellipse(x, y, ringDiameter-10, ringDiameter-10);
    ellipse(x, y, ringDiameter-15, ringDiameter-15);
    ellipse(x, y, ringDiameter-20, ringDiameter-20);
  }

  @Override
    public void centerPlanet() {
    fill(#B07C51);
    circle(width/2, height/2, 100);

    float ringDiameter = 160;
    noFill();
    stroke(#B07C51);
    ellipse(width/2, height/2, ringDiameter+29, ringDiameter+29);
    ellipse(width/2, height/2, ringDiameter+30, ringDiameter+30);
    ellipse(width/2, height/2, ringDiameter+31, ringDiameter+31);
    ellipse(width/2, height/2, ringDiameter+32, ringDiameter+32);
    ellipse(width/2, height/2, ringDiameter+33, ringDiameter+33);
    ellipse(width/2, height/2, ringDiameter+34, ringDiameter+34);
    ellipse(width/2, height/2, ringDiameter+35, ringDiameter+35);
    ellipse(width/2, height/2, ringDiameter+36, ringDiameter+36);
    ellipse(width/2, height/2, ringDiameter+37, ringDiameter+37);
    ellipse(width/2, height/2, ringDiameter+38, ringDiameter+38);

    stroke(#B4957B);
    ellipse(width/2, height/2, ringDiameter+24, ringDiameter+24);
    ellipse(width/2, height/2, ringDiameter+25, ringDiameter+25);
    ellipse(width/2, height/2, ringDiameter+26, ringDiameter+26);
    ellipse(width/2, height/2, ringDiameter+27, ringDiameter+27);
    ellipse(width/2, height/2, ringDiameter+28, ringDiameter+28);
    ellipse(width/2, height/2, ringDiameter+1, ringDiameter+1);
    ellipse(width/2, height/2, ringDiameter+2, ringDiameter+2);
    ellipse(width/2, height/2, ringDiameter+3, ringDiameter+3);
    ellipse(width/2, height/2, ringDiameter+4, ringDiameter+4);
    ellipse(width/2, height/2, ringDiameter+5, ringDiameter+5);
    ellipse(width/2, height/2, ringDiameter+6, ringDiameter+6);
    ellipse(width/2, height/2, ringDiameter+7, ringDiameter+7);
    ellipse(width/2, height/2, ringDiameter+8, ringDiameter+8);
    ellipse(width/2, height/2, ringDiameter+9, ringDiameter+9);
    ellipse(width/2, height/2, ringDiameter, ringDiameter);
    ellipse(width/2, height/2, ringDiameter-1, ringDiameter-1);
    ellipse(width/2, height/2, ringDiameter-2, ringDiameter-2);
    ellipse(width/2, height/2, ringDiameter-3, ringDiameter-3);
    ellipse(width/2, height/2, ringDiameter-4, ringDiameter-4);
    ellipse(width/2, height/2, ringDiameter-5, ringDiameter-5);
    ellipse(width/2, height/2, ringDiameter-6, ringDiameter-6);
    ellipse(width/2, height/2, ringDiameter-7, ringDiameter-7);
    ellipse(width/2, height/2, ringDiameter-8, ringDiameter-8);
    ellipse(width/2, height/2, ringDiameter-9, ringDiameter-9);
    ellipse(width/2, height/2, ringDiameter-10, ringDiameter-10);
    ellipse(width/2, height/2, ringDiameter-12, ringDiameter-12);
    ellipse(width/2, height/2, ringDiameter-13, ringDiameter-13);
    ellipse(width/2, height/2, ringDiameter-14, ringDiameter-14);
    ellipse(width/2, height/2, ringDiameter-15, ringDiameter-15);
    ellipse(width/2, height/2, ringDiameter-16, ringDiameter-16);
    ellipse(width/2, height/2, ringDiameter-17, ringDiameter-17);
    ellipse(width/2, height/2, ringDiameter-18, ringDiameter-18);
    ellipse(width/2, height/2, ringDiameter-19, ringDiameter-19);

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    //Enceladus
    fill(#C2C2C2);
    circle(x, y, 5);

    //Tethys
    fill(#C2C2C2);
    circle(x1, y1, 10);

    //Dione
    fill(#C2C2C2);
    circle(x2, y2, 11);

    //Titan
    fill(#DCC45A);
    circle(x3, y3, 20);
  }

  @Override
    public void moonOrbit() {
    float centerX = width / 2;
    float centerY = height / 2;

    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA-300) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB-270) * sin(-angle));

    x1 = (int) (centerX + (orbitRadiusA-200) * cos(-angle1));
    y1 = (int) (centerY + (orbitRadiusB-170) * sin(-angle1));

    x2 = (int) (centerX + (orbitRadiusA) * cos(-angle2));
    y2 = (int) (centerY + (orbitRadiusB) * sin(-angle2));

    x3 = (int) (centerX + (orbitRadiusA+550) * cos(-angle3));
    y3 = (int) (centerY + (orbitRadiusB+420) * sin(-angle3));

    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-300) * 2, (orbitRadiusB-270) * 2);
    if (angle >= 2 * PI) {
      orbitCount++;
      angle = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA-200) * 2, (orbitRadiusB-170) * 2);
    if (angle1 >= 2 * PI) {
      orbitCount1++;
      angle1 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA) * 2, (orbitRadiusB) * 2);
    if (angle2 >= 2 * PI) {
      orbitCount2++;
      angle2 = 0; // Reset the angle for the next orbit
    }

    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+550) * 2, (orbitRadiusB+420) * 2);
    if (angle3 >= 2 * PI) {
      orbitCount3++;
      angle3 = 0; // Reset the angle for the next orbit
    }
    // Draw the Moon
    drawMoon();

    angle += speed*100; // Controls the speed of the orbit
    angle1 += (speed*100)/1.36;
    angle2 += (speed*100)/2;
    angle3 += (speed*100)/11.6;
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Saturn Orbit Count: " + (orbitCount), 100, 260);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Enceladus Orbit Count: " + orbitCount, 150, 60);
    text("Tethys Orbit Count: " + orbitCount1, 150, 100);
    text("Dione Orbit Count: " + orbitCount2, 150, 140);
    text("Titan Orbit Count: " + orbitCount3, 150, 180);
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
