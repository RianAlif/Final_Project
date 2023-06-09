public class Venus extends Planet {

  public Venus(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed) {
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
    public void drawPlanet() {
    fill(#FF863C);
    circle(x, y, size);
  }

  @Override
    public void centerPlanet() {
    fill(#FF863C);
    circle(width/2, height/2, 200);

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
    text("Venus Orbit Count: " + (orbitCount), 100, 100);
  }

  @Override
    public void displayMoonOrbitCount() {
    fill(#FFFFFF);
    textSize(80);
    text("NO MOON", width/2 - 170, height/2 - 350);
  }
}
