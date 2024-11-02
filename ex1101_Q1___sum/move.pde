void move(){
    geX += geVX;
    geY += geVY;

    if (geX >= width*3/4 && geVX > 0) { 
      geVX = 0;
      geVY = 5;
    } else if (geY >= height*3/4 && geVY > 0) {
      geVX = -5;
      geVY = 0;
    } else if (geX <= width / 4 && geVX < 0) { 
      geVX = 0;
      geVY = -5;
    } else if (geY <= height / 4 && geVY < 0) { 
      geVX = 5;
      geVY = 0;
    }
  
  
  
  if (keyPressed) {
      if (key == 'w') njY -= 5;
      if (key == 'a') njX -= 5;
      if (key == 's') njY += 5;
      if (key == 'd') njX += 5;
    }
  
  shX += shVX;
  shY += shVY;
  
  if (shX <=0 || shX >= width) {
    shVX *= -1;
  }
  if (shY <= 0 || shY >= height) {
    shVY *= -1;
  }
  
  if(dist(njX, njY, geX, geY) <(njSize / 2 + 75 * geSize)) {
    gehitcount++;
  }
  if(dist(njX, njY, shX, shY) <(njSize / 2 + 75 * shSize)) {
    shhitcount++;
  }
}
