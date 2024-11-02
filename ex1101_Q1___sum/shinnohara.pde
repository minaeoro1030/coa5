void shinnohara(float pos_x, float pos_y, float ratio) { 
  //face
  if (shhitcount % 2 ==1){
    fill(255,0,0);
  } else{
    fill(255, 229, 204);
  }
  noStroke();
  ellipse(pos_x,pos_y,350*ratio,300*ratio);
  arc(pos_x,pos_y+50*ratio,415*ratio,201*ratio,PI/2,3*PI/2);
  //mouth
  fill(190,0,0);
  stroke(0);
  circle(pos_x-80*ratio,pos_y+100*ratio,50*ratio);
  //hair
  fill(0);
  arc(pos_x,pos_y-100*ratio,255*ratio,100*ratio,PI,2*PI);
  arc(pos_x+125*ratio,pos_y,90*ratio,200*ratio,3*PI/2,5*PI/2);
  //epos_ye
  beginShape();
  vertex(pos_x-150*ratio,pos_y-50*ratio);
  bezierVertex(pos_x-120*ratio,pos_y-100*ratio,pos_x-90*ratio,pos_y-100*ratio,pos_x-60*ratio,pos_y-50*ratio);
  bezierVertex(pos_x-90*ratio,pos_y-75*ratio,pos_x-120*ratio,pos_y-75*ratio,pos_x-150*ratio,pos_y-50*ratio);
  endShape();
  beginShape();
  vertex(pos_x,pos_y-50*ratio);
  bezierVertex(pos_x+30*ratio,pos_y-100*ratio,pos_x+60*ratio,pos_y-100*ratio,pos_x+90*ratio,pos_y-50*ratio);
  bezierVertex(pos_x+60*ratio,pos_y-75*ratio,pos_x+30*ratio,pos_y-75*ratio,pos_x,pos_y-50*ratio);
  endShape();
  fill(255,229,204);
  arc(pos_x-105*ratio,pos_y-30*ratio,90*ratio,50*ratio,PI,2*PI);
  arc(pos_x+45*ratio,pos_y-30*ratio,90*ratio,50*ratio,PI,2*PI);
  fill(0);
  circle(pos_x-90*ratio,pos_y-10*ratio,60*ratio);
  circle(pos_x+35*ratio,pos_y-10*ratio,60*ratio);
  fill(255);
  circle(pos_x-90*ratio,pos_y-10*ratio,20*ratio);
  circle(pos_x+35*ratio,pos_y-10*ratio,20*ratio);
  //ear
  fill(255,229,204);
  noStroke();
  ellipse(pos_x+150*ratio,pos_y+80*ratio,70*ratio,50*ratio);
}
