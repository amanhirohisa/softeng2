Figure[] figs;
PImage sakura;

void setup(){
  size(900,600);
  
  sakura = loadImage("sakura.jpg");
  
  figs = new Figure[30];
  
  for( int i = 0; i < figs.length; i++ ){
    int rand = (int)random(3);
    if ( rand == 0 ){
      figs[i] = new Ball();
    }
    else if ( rand == 1 ){
      figs[i] = new Ellipse();
    }
    else{
      figs[i] = new Rect();    
    }
  }
}

void draw(){
  image(sakura, 0, 0);
  for( int i = 0; i < figs.length; i++ ){
    figs[i].paint();
  }
}

void mousePressed(){
  for( int i = 0; i < figs.length; i++ ){
    figs[i].hit();
  }
}
