public class Venus extends Planet {
  
  public Venus(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
    fill(#EDBFBF); 
    circle(x, y, size);
    fill(#F18938); //Darker pink color for details
    ellipse(x, y, size, size-10);
  }
  
   @Override
  public void centerPlanet(){
   fill(#EDBFBF); 
    circle(width/2, height/2, 200);
    fill(#F18938); //Darker pink color for details
    ellipse(width/2, height/2, 200, 90);
    
    fill(#FFFFFF);
    rect(1490, 760, 195, 50);
    fill(#42f300);
    textSize(50);
    text("RETURN", 1500, 800);
  }
  
   @Override
  public void drawMoon(){}
  
   @Override
  public void displayOrbitCount(){
    fill(#FFFFFF);
    textSize(25);
    text("Venus Orbit Count: " + (orbitCount - 1), 100, 140);
  }
  
  @Override
  public void displayMoonOrbitCount(){}
}
