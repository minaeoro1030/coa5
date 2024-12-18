class gear {
  // constructor
  gear() {
    pos_x = width/4;
    pos_y = height/4;
    ratio = 0.8;
    hitcount = 0;
  }

  // member data
  float pos_x, pos_y, ratio;
  float vx = 5, vy = 0;
  int hitcount;

  // membber function
  void rendering() {
    noStroke();
    
    if (hitcount % 2 ==1){
      fill(255,0,0);
    } else{
      fill(100);
    }

    // gear tooth and head
    rect(pos_x - 25 * ratio, pos_y - 120 * ratio, 50 * ratio, 240 * ratio);// gear tooth 1
    rect(pos_x - 120 * ratio, pos_y - 25 * ratio, 240 * ratio, 50 * ratio);// gear tooth 2

    pushMatrix();
    translate(pos_x, pos_y);
    rotate(PI / 4);
    rect(-25 * ratio, -120 * ratio, 50 * ratio, 240 * ratio);// gear tooth 3
    rect(-120 * ratio, -25 * ratio, 240 * ratio, 50 * ratio);// gear tooth 4
    popMatrix();

    circle(pos_x, pos_y, 200 * ratio);// head

    // face
    stroke(0);
    strokeWeight(2 * ratio);
    fill(128);
    circle(pos_x, pos_y, 150 * ratio);// face

    // eye
    fill(50, 0, 0);
    circle(pos_x - 30 * ratio, pos_y - 25 * ratio, 35 * ratio);// left eye 1
    circle(pos_x + 30 * ratio, pos_y - 25 * ratio, 35 * ratio);// right eye 1
    noStroke();
    fill(255);
    circle(pos_x - 25 * ratio, pos_y - 28 * ratio, 10 * ratio);// left eye 2
    circle(pos_x + 35 * ratio, pos_y - 28 * ratio, 10 * ratio);// right eye 2

    // mouth
    fill(100, 0, 0);
    circle(pos_x, pos_y + 30 * ratio, 30 * ratio);// mouth
    fill(200, 0, 0);
    ellipse(pos_x, pos_y + 40 * ratio, 20 * ratio, 10 * ratio);// tongue
  }
  
  void move() {
    pos_x += vx;
    pos_y += vy;

    if (pos_x >= width*3/4 && vx > 0) { 
      vx = 0;
      vy = 5;
    } else if (pos_y >= height*3/4 && vy > 0) {
      vx = -5;
      vy = 0;
    } else if (pos_x <= width / 4 && vx < 0) { 
      vx = 0;
      vy = -5;
    } else if (pos_y <= height / 4 && vy < 0) { 
      vx = 5;
      vy = 0;
    }
  }
}
