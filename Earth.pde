public class Earth extends Planet {

  public Earth(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    super(angle, size, orbitRadiusA, orbitRadiusB, speed);
  }
  
  @Override
  public void drawPlanet() {
  fill(#0966f5);

  // Draw the Earth as a circle with added details
  circle(x, y, size);
  fill(#19E700);
  float detailSize = size / 2;

  // Draw details on the Earth using smaller circles
  circle(x - detailSize +6, y - detailSize + 6, detailSize);
  circle(x + detailSize -6, y + detailSize -6, detailSize);
  }
  
  @Override
  public void centerPlanet(){
    noStroke();
    fill(#2b88ff);
    circle(width/2, height/2, 200);
    fill(#19E700);
    circle(width/2 - 40, height/2 - 40, 85);
    circle(width/2 + 20, height/2 + 50, 85);
    circle(width/2 + 60, height/2 - 20, 50);

  }
  
  @Override
  public void drawMoon(){
    noStroke();
    fill(#c1c0bf);
    circle(x, y, 40);
  }
  
  @Override
  public void displayOrbitCount(){
    fill(#FFFFFF);
    textSize(30);
    text("Earth Orbit Count: " + (orbitCount - 1), 150, 60);
  }
  
  @Override
  public void displayMoonOrbitCount(){
  fill(#FFFFFF);
  textSize(30);
  text("Moon Orbit Count: " + (orbitCount - 1), 150, 60);
  }
}
