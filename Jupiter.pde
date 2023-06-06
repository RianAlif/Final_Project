public class Jupiter extends Planet {

  public Jupiter(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
   fill(#ff982b);
   circle(x, y, size);
  }
  
  @Override
  public void centerPlanet(){}
  
  @Override
  public void drawMoon(){}
  
  @Override
  public void displayOrbitCount(){
    fill(#FFFFFF);
    textSize(30);
    text("Jupiter Orbit Count: " + (orbitCount - 1), 150, 180);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
