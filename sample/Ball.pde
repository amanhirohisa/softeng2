class Ball {
  int r, x, y, dx, dy;
  
  Ball(){
    r = 40;
    x = (int)random(width);
    y = (int)random(height);
    if ( random(1) > 0.5 ){
      dx = 1;
    }
    else{
      dx = -1;
    }
    if ( random(1) > 0.5 ){
      dy = 1;
    }
    else{
      dy = -1;
    }
  }
  
  void paint(){
    fill(255, 0, 0);
    ellipse(x, y, r, r);
    x += dx;
    y += dy;
    if ( x < 0 || x > width ){
      dx *= -1;
    }
    if ( y < 0 || y > height ){
      dy *= -1;
    }
  }
  
  void hit(){
    if ( (mouseX-x)*(mouseX-x) + (mouseY-y)*(mouseY-y) < r*r ){
      dx *= 2;
      dy *= 2;
    }
  }
}
