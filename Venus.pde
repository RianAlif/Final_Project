public class Venus extends Planet {
  
  public Venus(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
    fill(#EDBFBF); // Pink color for Venus
    
    // Draw Venus as a circle
    circle(x, y, size);
    fill(#F18938); //Darker pink color for details
    ellipse(x, y, size, size-10);
  }
  
   @Override
  public void centerPlanet(){}
  
   @Override
  public void drawMoon(){}
}
