public class Uranus extends Planet {

  public Uranus(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
   fill(#8ad1e1);
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
    text("Mercury Orbit Count: " + (orbitCount - 1), 150, 340);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
