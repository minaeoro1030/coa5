gear [] ge;
shinnohara [] sh;
noju nj;

void setup() {
  size(800, 800);
  ge = new gear[5];
  sh = new shinnohara[5];
    
  for (int i=0; i<5; i++) {
    ge[i] = new gear(random(width), random(height), 0.4);
  }
  for (int i=0; i<5; i++) {
    sh[i] = new shinnohara(random(width), random(height), 0.25);
  } 
    nj = new noju();
}

void draw() {
  background(200);
  for (int i=0; i<5; i++) {
    ge[i].move();
  }
  for (int i=0; i<5; i++) {
    sh[i].move();
  }
  nj.move();
  
  for (int i=0; i<5; i++) {
    ge[i].rendering();
  }
  for (int i=0; i<5; i++) {
    sh[i].rendering();
  }
  nj.rendering();
}
