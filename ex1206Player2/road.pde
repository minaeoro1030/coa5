float roadLength; //다른 파일에서도 사용하기 위해 글로벌 변수 선언
void road(float x, float z){
  roadLength = x;
  pushMatrix();
  noStroke();
  
  translate(x/2, -10, z/4-5);
  fill(0);
  box(x, 20, (z-20)/2);
  
  translate(0, 0, z/4+5);
  fill(255, 255, 0);
  box(x, 22, 20);
  
  translate(0, 0, z/4+5);
  fill(0);
  box(x, 20, (z-20)/2);
  popMatrix();
}
