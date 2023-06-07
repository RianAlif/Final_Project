public class Saturn extends Planet {

  public Saturn(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    // Draw Saturn's body
    fill(211, 157, 101); // Brown color for the planet
    circle(x, y, size);

    // Draw Saturn's ring
    float ringThickness = 60;
    float ringDiameter = size + (ringThickness);
    noFill();
    stroke(255, 255, 0); // Yellow color for the ring
    ellipse(x, y, ringDiameter, ringDiameter);
  }

  @Override
    public void centerPlanet() {
  }

  @Override
    public void drawMoon() {
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Saturn Orbit Count: " + (orbitCount - 1), 100, 300);
  }

  @Override
    public void displayMoonOrbitCount() {
  }
}
