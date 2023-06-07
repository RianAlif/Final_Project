public class Neptune extends Planet {

  public Neptune(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
   fill(#3a75e4);
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
    text("Neptune Orbit Count: " + (orbitCount - 1), 100, 260);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
