//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
float dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  noStroke();
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 0;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
}//setup

void draw() {
  //background(0);
  //sin curve
  drawCool(angle, sinAmplitude, height/2);
  angle++;
  if (angle%15 == 0){
    sinAmplitude+= 1;
  }
  dotDiameter = 5;//20+5*sin(radians(angle))+5*cos(radians(angle));
}//draw

void drawCool(int degrees, int amplitude, int yOffset) {
  circle(cos(radians(degrees))*amplitude+height/2, sin(radians(degrees))*amplitude+yOffset, dotDiameter); 
  fill(255-255*sin(radians(degrees)), 255*cos(radians(degrees)),255-200*cos(radians(degrees))+55);
  
}
void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  circle(cos(radians(degrees))*radius+xOffset, sin(radians(degrees))*radius+yOffset, 5);
}
