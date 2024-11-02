gear ge;
noju nj;
shinnohara sh;

void setup() {
  size(800, 800);
  
  ge = new gear();
  nj = new noju();
  sh = new shinnohara();
  
}

void draw() {
  background(200);
  ge.move();
  nj.move();
  sh.move();
  
  ge.rendering();
  nj.rendering();
  sh.rendering();
}
