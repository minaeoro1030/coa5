float geX, geY, geSize, geVX, geVY;
float njX, njY, njSize;
float shX, shY, shSize, shVX, shVY;
int gehitcount = 0 ,shhitcount = 0;

void setup() {
  size(800, 800);
  geX = width/4;
  geY = height/4;
  njX = width/2;
  njY = height/2;
  shX = width/4*3;
  shY = height/4*3;
  
  geVX = 5;
  geVY = 0;
  shVX = random(-2,2);
  shVY = random(-2,2);
  
  geSize = 0.8;
  njSize = 100;
  shSize = 0.5;
}

void draw() {
  background(200);
  move();
  gear(geX, geY, geSize);
  noju(njX, njY, njSize);
  shinnohara(shX, shY, shSize);
}
