int[] xvals,yvals;
int numPoints;
int counter = 0;
int line_color = 255;
int weight = 1;

void setup() {
  size(600,600);
  background(0);
  xvals = new int[10];
  yvals = new int[10];
  numPoints = 10;  
}

void draw() {
  background(0);
  stroke(line_color);
  strokeWeight(weight);
  drawLines(xvals,yvals);
}

void mousePressed() {
  if(counter>xvals.length-2 && counter>yvals.length-2) {
    println("Need a Larger List");
  }
  else{
    xvals[counter+1] = mouseX;
    yvals[counter+1] = mouseY;
    counter++;
  }
}

void drawLines(int[] xs, int[] ys) {
  for(int i = 0; i<counter; i++) {
    if(counter>xvals.length-1 && counter>yvals.length-1) {
      println("Need a Larger List");
    }
    else{
      line(xs[i], ys[i], xs[i+1], ys[i+1]);
    }
  }
}

void keyPressed() {
  if(keyCode == 'C') {
    line_color = 0;
  }
  if(keyCode == '1') {
    weight++;
  }
  if(keyCode == '2') {
    if(weight>1){
      weight-=1;
    }
  }
  if(keyCode == UP) {
    moveLines(xvals,yvals,0,-1);
  }  
  if(keyCode == RIGHT) {
    moveLines(xvals,yvals,1,0);
  }
  if(keyCode == LEFT) {
    moveLines(xvals,yvals,-1,0);
  }
  if(keyCode == DOWN) {
    moveLines(xvals,yvals,0,1);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  for(int i=0; i<xs.length; i++){
    xs[i]+=xMod;
  }
  for(int i=0; i<ys.length; i++){
    ys[i]+=yMod;
  }
}
