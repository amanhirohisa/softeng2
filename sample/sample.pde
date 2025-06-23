Ball a, b;

void setup(){
  size(400,300);
  a = new Ball();
  b = new Ball();
}

void draw(){
  background(255,255,255);
  a.paint();
  b.paint();
}

void mousePressed(){
  a.hit();
  b.hit();
}
