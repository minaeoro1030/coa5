class car {
  //constructor
  car(float x, float z, int d) {
    pos_x = x; //차의 위치
    pos_z = z; //차의 위치
    car_v = 4;
    car_d = d; //차의 방향: 0과 1로 구분
    car_r = 150 + int(random(100)); //차의 색
    car_g = 150 + int(random(100)); //차의 색
    car_b = 150 + int(random(100)); //차의 색
  }

  //member data
  float pos_x, pos_z, car_v;
  int car_d, car_r, car_g, car_b;

  //member function
  void rendering() {
    pushMatrix();
    stroke(200);
    translate(pos_x, 10, pos_z);
    fill(car_r, car_g, car_b);
    box(200, 20, 80);
    if (car_d == 0) translate(-10, 17.5, 0);
    else translate(10, 17.5, 0);
    box(140, 15, 80);
    popMatrix();
  }

  void move() {
    if (car_d==0) {
      pos_x += car_v;
      if (pos_x > roadLength-100) {
        pos_x = 100;
      }
    }
    else {
      pos_x -= car_v;
      if (pos_x < 100) {
        pos_x = roadLength-100;
      }
    }
  }
}
