
int ballWidth = 100;

int xc = 300;
int yc = ballWidth/2;
int xspeedc = 0;
int yspeedc = 0;

int xb = 300;
int yb = 300;
int xspeedb = 6;
int yspeedb = 3;

int xa = 300;
int ya = 300;
int xspeeda = 3;
int yspeeda = 3;

void setup(){
  size(600,500);
}

void keyPressed(){
  
}

void keyReleased(){
  
}

void draw(){
  
  background(255);
  
  xa += xspeeda;
  ya += yspeeda;
  fill(255,255,0);
  ellipse(xa,ya,100,100);
  if(xa>width-ballWidth/2 || xa<ballWidth/2){
    xspeeda *= -1;
  }
  if(ya>height-ballWidth/2 || ya<ballWidth/2){
    yspeeda *= -1;
  }
  
  xb += xspeedb;
  yb += yspeedb;
  fill(0,255,0);
  ellipse(xb,yb,100,100);
  if(xb>width-ballWidth/2 || xb<ballWidth/2){
    xspeedb *= -1;
  }
  if(yb>height-ballWidth/2 || yb<ballWidth/2){
    yspeedb *= -1;
  }
  
  xc += xspeedc;
  yspeedc += 1;
  yc += yspeedc;
  fill(0,0,255);
  ellipse(xc,yc,100,100);
  if(xc>width-ballWidth/2 || xc<ballWidth/2){
    xspeedc *= -1;
  }
  if(yc<ballWidth/2){
    yspeedc *= -1;
  }
  if(yc>height-ballWidth/2){
    yspeedc *= -1;
    yspeedc += 1;
    yc = height-ballWidth/2;
  }
  
  
}

