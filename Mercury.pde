public class Mercury extends Planet {

  public Mercury(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#D8D8D8); // Gray color for Mercury

    // Draw Mercury as a circle
    circle(x, y, size);
    fill(#808080); // Darker gray color for details
    ellipse(x, y, size, size - 10);
    fill(#808080);
    ellipse(x, y, size-10, size);
  }

  @Override
    public void centerPlanet() {
    noStroke();
    fill(#D8D8D8);
    circle(width/2, height/2, 200);

    noFill();
    stroke(100);
    strokeWeight(2);

    // Draw a series of craters
    for (int i = 0; i < 10; i++) {
      float radius = 20;
      float x = width/2 + 80;
      float y = height/2 + 40;
      ellipse(x, y, radius, radius);
    }

    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }

  @Override
    public void drawMoon() {
  }

  @Override
    public void moonOrbit() {
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Mercury Orbit Count: " + (orbitCount), 100, 60);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(80);
    text("NO MOON", width/2 - 170, height/2 - 350);
  }
}
