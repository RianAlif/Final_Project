public class Mars extends Planet {

  public Mars(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
   fill(#ff5e3a);
   circle(x, y, size);
  }
  
   @Override
  public void centerPlanet(){}
  
  @Override
  public void drawMoon(){}
  
  @Override
  public void displayOrbitCount(){
    fill(#FFFFFF);
    textSize(25);
    text("Mars Orbit Count: " + (orbitCount - 1), 100, 220);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
