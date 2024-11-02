void noju(float pos_x, float pos_y, float ratio) {
  fill(255);

  circle(pos_x,pos_y,ratio);  //얼굴
  
  circle(pos_x-ratio/4.5,pos_y-ratio/7,ratio/4);  // 왼눈
  circle(pos_x+ratio/4.5,pos_y-ratio/7,ratio/4);  //오른눈
  
  fill(0);
  circle(pos_x-ratio/4.5,pos_y-ratio/7,ratio/8);  //왼 눈동자
  circle(pos_x+ratio/4.5,pos_y-ratio/7,ratio/8);  //오른 눈동자
  
  arc(pos_x,pos_y,ratio/10,ratio/20,0,PI);  // 입
  
  arc(pos_x+ratio/2+ratio/3,pos_y,ratio*2/3,ratio/3,PI,PI*2);  // 오른 날개
  arc(pos_x+ratio/2+ratio/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x+ratio/2+ratio*3/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x+ratio/2+ratio*5/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x+ratio/2+ratio*7/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x+ratio/2+ratio*9/15,pos_y,ratio*2/15,ratio/7,0,PI);
  
  arc(pos_x-ratio/2-ratio/3,pos_y,ratio*2/3,ratio/3,PI,PI*2);  // 왼 날개
  arc(pos_x-ratio/2-ratio/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x-ratio/2-ratio*3/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x-ratio/2-ratio*5/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x-ratio/2-ratio*7/15,pos_y,ratio*2/15,ratio/7,0,PI);
  arc(pos_x-ratio/2-ratio*9/15,pos_y,ratio*2/15,ratio/7,0,PI);
}
