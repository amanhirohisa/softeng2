Ball[] objs;

void setup(){
  size(400,300);
  objs = new Ball[2];
  for( int i = 0; i < objs.length; i++ ){
    objs[i] = new Ball();
  }
}

void draw(){
  background(255,255,255);
  for( int i = 0; i < objs.length; i++ ){
    objs[i].paint();
  }  
}

void mousePressed(){
  for( int i = 0; i < objs.length; i++ ){
    objs[i].hit();
  }  
}
