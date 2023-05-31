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
}
