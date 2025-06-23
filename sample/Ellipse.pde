class Ellipse extends Figure {
  int w, h;
  
  Ellipse(){
    super();
    w = 70;
    h = 40;
  }
  
  void paint(){
    fill(255, 255, 0);
    ellipse(x, y, w, h);
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
    if ( (mouseX-x)*(mouseX-x) + (mouseY-y)*(mouseY-y) < w*h ){
      dx *= 2;
      dy *= 2;
    }
  }
}
