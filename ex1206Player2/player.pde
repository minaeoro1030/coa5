class player extends car {
  //constructor
  player(float x, float z, int d) {
    super(x, z, d);
  }

  //member function
  void rendering() {
    super.rendering();
  }

  void move() {
    if (keyPressed) {
      if (car_d==0) {
        if (key == 'w') {
          pos_x += car_v;
        }
        else if (key == 's') {
          pos_x -= car_v;
        }
      }
      else {
        if (key == 'w') {
          pos_x -= car_v;
        }
        else if (key == 's') {
          pos_x += car_v;
        }
      }
    }
    if (pos_x > roadLength-100) {
      pos_x = 100;
    }
    else if (pos_x < 100) {
      pos_x = roadLength-100;
    }
  }

  void move(char c) {
    if (car_d==0) {
      if (c == 'w') {
        pos_x += car_v;
      }
      else if (c == 's') {
        pos_x -= car_v;
      }
    }
    else {
      if (c == 'w') {
        pos_x -= car_v;
      }
      else if (c == 's') {
        pos_x += car_v;
      }
    }
    if (pos_x > roadLength-100) {
      pos_x = 100;
    }
    else if (pos_x < 100) {
      pos_x = roadLength-100;
    }
  }
}
