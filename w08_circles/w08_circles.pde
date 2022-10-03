int x=50, y=150;

void setup(){
  size(500,500);
  background(255);
  fill(#52DEF5);
  circle(50,50,95);
  circle(150,50,95);
  circle(250,50,95);
  circle(350,50,95);
  circle(450,50,95);
}

void draw() {
  fill(255);
  noStroke();
  rect(0,100,500,500);
  fill(#DD2DEA);
  stroke(2);
  circle(x,y,100);
  x+=5;
  if(x>450) {
    x=50;
    y+= 100;
  }
  if(y>500){
    y=150;
  }
}
