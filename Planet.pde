public abstract class Planet {
int x, y;
float angle;
float orbitRadiusA;
float orbitRadiusB;
float size;
float speed;

  public Planet(float angle, float size, float orbitRadiusA, float orbitRadiusB, float speed){
    this.angle = angle;
    this.orbitRadiusA = orbitRadiusA;
    this.orbitRadiusB = orbitRadiusB;
    this.size = size;
    this.speed = speed;
  }
  
  public void orbit() {
    float centerX = width / 2;
    float centerY = height / 2;
  
    // Calculate the new position of the Earth
    x = (int) (centerX + orbitRadiusA * cos(-angle));
    y = (int) (centerY + orbitRadiusB * sin(-angle));
    
    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, orbitRadiusA * 2, orbitRadiusB * 2);
    
    // Draw the Earth
    drawPlanet();
  
    angle += speed; // Controls the speed of the orbit
  }
  
  public void moonOrbit(){
    float centerX = width / 2;
    float centerY = height / 2;
  
    // Calculate the new position of the Earth
    x = (int) (centerX + orbitRadiusA * cos(-angle));
    y = (int) (centerY + orbitRadiusB * sin(-angle));
    
    // Draw the ellipse representing Earth's orbit
    noFill();
    stroke(#666666);
    ellipse(centerX, centerY, orbitRadiusA * 2, orbitRadiusB * 2);
    
    // Draw the Earth
    drawMoon();
  
    angle += speed; // Controls the speed of the orbit
  }

  public abstract void drawPlanet();
  public abstract void centerPlanet();
  public abstract void drawMoon();
  
}
