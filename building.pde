class building {
  //constructor
  building(float x1, float y1, float z1, float x2, float y2, float z2) {
    pos_x = x1; //빌딩의 위치
    pos_y = y1; //빌딩의 위치
    pos_z = z1; //빌딩의 위치
    size_x = x2; //빌딩의 크기
    size_y = y2; //빌딩의 높이
    size_z = z2; //빌딩의 크기
    wall_c = 80+int(random(170)); //빌딩의 색
  }
  
  //member data
  float pos_x, pos_y, pos_z, size_x, size_y, size_z;
  int wall_c;
  
  //member function
  void rendering(){
    pushMatrix();
    stroke(200);
    translate(pos_x, pos_y, pos_z);
    fill(wall_c);
    box(size_x, size_y, size_z);
    popMatrix();
  }
}
