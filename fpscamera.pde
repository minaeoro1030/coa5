void birdeyecamera() {
  camera(-700, 800, 610, 700, 0, 610, 0, -1, 0);
}
void fpscamera() {
  //camera(p.pos_x, 150, p.pos_z+400, p.pos_x, 50, p.pos_z - 200, 0, 1, 0);
  camera(p.pos_x+20, 30 , p.pos_z, p.pos_x+100, 20, p.pos_z, 0, -1, 0);
}

void keyPressed(){
  if (key == 'f')  birdeye = false;
  else if (key == 'z') birdeye = true;
}
