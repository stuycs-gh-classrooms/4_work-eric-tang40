void setup() {
  size(400,400);
}

void draw() {
  football(100,100);
  football(300,100);
  football(100,300);
  football(300,300);
}

void football(int x, int y) {
  fill(#765245);
  noStroke();
  ellipse(x,y,120,40);
  fill(0);
  stroke(10);
  line(x-60, y, x+60, y);
  fill(255);
  noStroke();
  rect(x-30, y-5, 5, 10);
  rect(x-20, y-5, 5, 10);
  rect(x-10, y-5, 5, 10);
  rect(x, y-5, 5, 10);
  rect(x+10, y-5, 5, 10);
  rect(x+20, y-5, 5, 10);
}
