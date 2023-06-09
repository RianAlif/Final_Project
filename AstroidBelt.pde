public class AstroidBelt{
float angle = 0;

void drawAstroidBelt(){
  noFill();
  stroke(#A9A8A8); 
  ellipse(width/2, height/2, 797, 547);
  ellipse(width/2, height/2, 800, 550);
  ellipse(width/2, height/2, 803, 553);
  ellipse(width/2, height/2, 806, 556);
  ellipse(width/2, height/2, 809, 559);
  ellipse(width/2, height/2, 812, 562);
  ellipse(width/2, height/2, 815, 565);
  ellipse(width/2, height/2, 818, 568);
  ellipse(width/2, height/2, 821, 571);
  ellipse(width/2, height/2, 824, 574);
}

void astroidOrbit(){
   float centerX = width / 2;
   float centerY = height / 2;
  
    // Calculate the new position of the part of belt
    x = (int) (centerX + 406 * cos(-angle));
    y = (int) (centerY + 281 * sin(-angle));
    
    int x1 = (int) (centerX + 406 * cos(-angle + 1));
    int y1 = (int) (centerY + 281 * sin(-angle + 1));
    
    int x2 = (int) (centerX + 406 * cos(-angle + 2));
    int y2 = (int) (centerY + 281 * sin(-angle + 2));
    
    int x3 = (int) (centerX + 406 * cos(-angle + 3));
    int y3 = (int) (centerY + 281 * sin(-angle + 3));
    
    int x4 = (int) (centerX + 406 * cos(-angle + 4));
    int y4 = (int) (centerY + 281 * sin(-angle + 4));
    
    int x5 = (int) (centerX + 406 * cos(-angle + 5));
    int y5 = (int) (centerY + 281 * sin(-angle + 5));
   
    int x6 = (int) (centerX + 406 * cos(-angle + 6));
    int y6 = (int) (centerY + 281 * sin(-angle + 6));
    
    int x7 = (int) (centerX + 406 * cos(-angle + 7));
    int y7 = (int) (centerY + 281 * sin(-angle + 7));
    
    int x8 = (int) (centerX + 406 * cos(-angle + 8));
    int y8 = (int) (centerY + 281 * sin(-angle + 8));
    
    int x9 = (int) (centerX + 406 * cos(-angle + 9));
    int y9 = (int) (centerY + 281 * sin(-angle + 9));
    
    int x10 = (int) (centerX + 406 * cos(-angle + 10));
    int y10 = (int) (centerY + 281 * sin(-angle + 10));
    
    int x11 = (int) (centerX + 406 * cos(-angle + 11));
    int y11 = (int) (centerY + 281 * sin(-angle + 11));
    
    noStroke();
    fill(#2F2C2C);
    rect(x, y, 6, 6);
    
    fill(#2F2C2C);
    rect(x1, y1, 6, 6);
    
    fill(#2F2C2C);
    rect(x2, y2, 6, 6);
    
    fill(#2F2C2C);
    rect(x3, y3, 6, 6);
    
    fill(#2F2C2C);
    rect(x4, y4, 6, 6);
    
    fill(#2F2C2C);
    rect(x5, y5, 6, 6);
    
    fill(#2F2C2C);
    rect(x6, y6, 6, 6);
    
    fill(#2F2C2C);
    rect(x7, y7, 6, 6);
    
    fill(#2F2C2C);
    rect(x8, y8, 6, 6);
    
    fill(#2F2C2C);
    rect(x9, y9, 6, 6);
    
    fill(#2F2C2C);
    rect(x10, y10, 6, 6);
    
    fill(#2F2C2C);
    rect(x11, y11, 6, 6);
  
    angle += 0.01; // Controls the speed of the orbit
}
}
