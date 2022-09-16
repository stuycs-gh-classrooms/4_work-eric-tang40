float move_right = 0;
float move_up = 0;

void setup() {
  size(600,600);
}

void draw(){ 
  fill(#B00B69);
  rect(0,0,width,height);
  drawChar(200 + move_right, 200+move_up);
}

void keyPressed() {
  if(key== 'd') {
    move_right+=6;
  }
  if(key== 'a') {
    move_right -= 6;
  }
  if(key== 'w') {
    move_up -= 6;
  }
  if(key== 's') {
    move_up += 6;
  }
}

void drawChar(float x,float y) {
  noStroke();
  fill(255);
  rect(90+x,110+y,190,90, 20); //main body
  rect(100+x,195+y,20,65); //legs
  rect(140+x,200+y,20,60);
  rect(200+x,200+y,20,60);
  rect(240+x,200+y,20,60);
  rect(40+x,145+y,70,20, 10); //tail
  fill(50);
  rect(x+170, y+60, 50, 50);
  rect(x+150, y+110, 90, 5);
  fill(255);
  ellipse(290+x,135+y,100,100);  //head
  triangle(265+x,92+y,295+x,87+y,279+x,72+y);
  triangle(319+x,97+y,329+x,105+y,332+x,89+y);
  fill(#B00B69);
  circle(300+x, 135+y, 10);
  arc(300+x,150+y,329+x,146+y,0,HALF_PI);
}

void mouseClicked() {
  println ("Mouse X Position: "+ mouseX +", Mouse Y Position: " + mouseY);
}
