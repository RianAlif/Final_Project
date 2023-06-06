public class Saturn extends Planet {
  
  public Saturn(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
  public void drawPlanet() {
     fill(#d39d65);
     circle(x, y, size);
  }
  
   @Override
  public void centerPlanet(){}
  
  @Override
  public void drawMoon(){}
}
