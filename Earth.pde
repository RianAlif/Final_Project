public class Earth extends Planet {

  public Earth(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#0966f5);

    // Draw the Earth as a circle with added details
    circle(x, y, size);
    fill(#19E700);
    float detailSize = size / 2;

    // Draw details on the Earth using smaller circles
    circle(x - detailSize +6, y - detailSize + 6, detailSize);
    circle(x + detailSize -6, y + detailSize -6, detailSize);
  }

  @Override
    public void centerPlanet() {
    noStroke();
    fill(#2b88ff);
    circle(width/2, height/2, 200);
    fill(#19E700);
    circle(width/2 - 40, height/2 - 40, 85);
    circle(width/2 + 20, height/2 + 50, 85);
    circle(width/2 + 60, height/2 - 20, 50);


    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
    noStroke();
    fill(#c1c0bf);
    circle(x, y, 30);
  }

  @Override
    public void moonOrbit() {
    float centerX = width / 2;
    float centerY = height / 2;

    // Calculate the new position of the Earth
    x = (int) (centerX + (orbitRadiusA+60) * cos(-angle));
    y = (int) (centerY + (orbitRadiusB+60) * sin(-angle));

    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, (orbitRadiusA+60) * 2, (orbitRadiusB+60) * 2);
    if (angle >= 2 * PI) {
      orbitCount++;
      angle = 0; // Reset the angle for the next orbit
    }
    // Draw the Moon
    drawMoon();

    angle += speed; // Controls the speed of the orbit
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Earth Orbit Count: " + (orbitCount), 100, 140);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(30);
    text("Moon Orbit Count: " + orbitCount, 150, 60);
  }
}
