public class Mars extends Planet {

  public Mars(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
   fill(#ff5e3a);
   circle(x, y, size);
  }
}
