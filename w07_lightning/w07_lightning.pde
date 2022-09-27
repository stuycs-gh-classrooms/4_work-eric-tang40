void setup() {
  size(500,500);
  background(255);
  drawLightning(150,100,4);
  drawLightning(250,60,8);
  drawLightning(350,200,12);
  drawLightning(450,140,10);
  drawLightning(50,100,5);
}

void drawLightning(int x, int y, int numParts) {
  int nextY = (500 - y) / numParts; // value of Y_increase
  int Y_increase = nextY; // stores the amount Y increases by 
  int nextX = x; 
  while(numParts > 0) {
    nextX = nextX + int(random(-50, 50));
    nextY += Y_increase; 
    print("(" + x + ", " + y + ", " + nextX + ", " + nextY + ")" + "\n");
    stroke(#7DF9FF);
    strokeWeight(5);
    line(x, y, nextX, nextY);
    x = nextX;
    y = nextY;
    numParts = numParts - 1; // counter
  }
}
