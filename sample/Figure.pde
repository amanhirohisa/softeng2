class Figure {
  int x, y, dx, dy;
  
  Figure(){
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
  }
    
  void hit(){
  } 
}
