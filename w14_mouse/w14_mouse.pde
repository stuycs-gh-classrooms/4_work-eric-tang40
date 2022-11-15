int[] xvals,yvals;
int numPoints;
int counter = 0;

void setup() {
  size(600,600);
  background(0);
  xvals = new int[10];
  yvals = new int[10];
  numPoints = 10;  
  //makeLines(xvals, yvals, 10);
}

void draw() {
  background(0);
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
  stroke(255);
  for(int i = 0; i<counter; i++) {
    if(counter>xvals.length-1 && counter>yvals.length-1) {
      println("Need a Larger List");
    }
    else{
      line(xs[i], ys[i], xs[i+1], ys[i+1]);
    }
  }
}

//void makeLines(int[] xs, int[] ys, int points) {
//  for(int i=0; i<points && i < xs.length && i < ys.length; i++) {
//    xs[i] = int(random(0,width));
//    ys[i] = int(random(0,height));
//    numPoints++; //tracks how many points are drawn
//  }
//}
