class Rect extends Figure {
  int w, h;
  
  Rect(){
    super();
    w = 60;
    h = 50;
  }
  
  void paint(){
    fill(0, 255, 255);
    rect(x-w/2, y-h/2, w, h);
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
    if ( (mouseX-x)*(mouseX-x) < w*w && (mouseY-y)*(mouseY-y) < h*h ){
      dx *= 2;
      dy *= 2;
    }
  }
}
