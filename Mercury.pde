public class Mercury extends Planet {
  
  public Mercury(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }

  @Override
  public void drawPlanet() {
     fill(#D8D8D8); // Gray color for Mercury
  
      // Draw Mercury as a circle
      circle(x, y, size);
      fill(#808080); // Darker gray color for details
      ellipse(x, y, size, size - 10);
      fill(#808080); 
      ellipse(x, y, size-10, size);
  }
  
   @Override
  public void centerPlanet(){}
  
  @Override
  public void drawMoon(){}
 
  @Override
  public void displayOrbitCount(){
    fill(#FFFFFF);
    textSize(30);
    text("Mercury Orbit Count: " + (orbitCount - 1), 150, 100);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
