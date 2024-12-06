import processing.net.*;

Client p2;
char ch;

building [] bd;
player pp1, pp2;

void setup(){
  size(1600,1220,P3D);
  camera(1700, 4000, 610, 1700, 0, 610, -1, 0, 0);
  
  p2 = new Client(this, "127.0.0.1", 4096);
  
  bd = new building[10];
  bd[0] =  new building(200, 400, 200, 400, 800, 400);
  bd[1] =  new building(1100, 300, 200, 1000, 600, 400);
  bd[2] =  new building(200, 450, 1020, 400, 900, 400);
  bd[3] =  new building(800, 350, 1020, 400, 700, 400);
  bd[4] =  new building(1400, 400, 1020, 400, 800, 400);
  bd[5] =  new building(2000, 360, 200, 400, 780, 400);
  bd[6] =  new building(2900, 310, 200, 1000, 620, 400);
  bd[7] =  new building(2000, 440, 1020, 400, 880, 400);
  bd[8] =  new building(2600, 360, 1020, 400, 720, 400);
  bd[9] =  new building(3200, 400, 1020, 400, 800, 400);
  
  pp1 = new player(100, 500, 0);
  pp2 = new player(100, 720, 0);
}

void draw(){ 
  lights();
  background(200,255,255);
  camera(pp2.pos_x+20, 30 , pp2.pos_z, pp2.pos_x+100, 20, pp2.pos_z, 0, -1, 0);
  axis();
  road(3400, 1220);
  for(int i=0; i<10; i++){
    bd[i].rendering();
  }
  
  if(keyPressed){
    pp2.move(key);
    p2.write(key);
  }
 
  if(p2.available() > 0){
    ch=p2.readChar();
    pp1.move(ch);
  }
  
  pp1.rendering();
  pp2.rendering();
}
