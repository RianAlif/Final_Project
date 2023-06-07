public class Mars extends Planet {

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
    noStroke();
    fill(#c3e9d3);
    circle(x, y, 30);
   
  }

  @Override
    public void displayOrbitCount() {
    fill(#FFFFFF);
    textSize(25);
    text("Mars Orbit Count: " + (orbitCount - 1), 100, 220);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(30);
    text("Moon Orbit Count: " + (orbitCount - 1), 150, 60);
  }
}
