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
  }
  
  @Override
  public void drawMoon(){
    noStroke();
    fill(#c1c0bf);
    circle(x, y, size);
  }
}
