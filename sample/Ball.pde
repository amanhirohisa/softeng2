class Ball extends Figure {
  int r;
  
  Ball(){
    super();
    r = 40;
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
