int[] xvals,yvals;
int numPoints;
int counter;

void setup() {
  size(600,600);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 105;  
  counter = numPoints;
  makeLines(xvals, yvals, numPoints);
  drawLines(xvals, yvals);
}

void makeLines(int[] xs, int[] ys, int points) {
  if(points>xs.length) {
      counter = xs.length;
   }
   else if (points>ys.length){
      counter = ys.length;
   }
   else{
     counter = points;
   }
  for(int i=0; i<counter; i++){
    xs[i] = int(random(0,width));
    ys[i] = int(random(0,height));
  }
}

void drawLines(int[] xs, int[] ys) {
  for(int i=0; i<counter-1; i++){
    stroke(255);
    line(xs[i], ys[i], xs[i+1], ys[i+1]);
  }
}
