//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius; 
float cy;
boolean done;
float sx, sy;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  cy=sinAmplitude;
  done= false;
  sx = width/2;
  sy = width/2;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  //rawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);

  angle++; //moves the sin graph to the right
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  circle(degrees,cy,1); 
  if(done == false) {
    cy = amplitude * sin(radians(degrees)) + yOffset; //determines the y-value for each x\
  }
  else{
    cy = -amplitude * sin(radians(degrees)) + yOffset;
  }
  if(degrees > width) {
    angle = 0;
    cy = sinAmplitude;
    done = true;
  }
}
void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  circle(sx, sy, 1);
  print("sx: " + sx+ " ");
  sx += cos(radians(degrees));
  sy += sin(radians(degrees));
  if(degrees>width) {
    angle = 0;
    sx=width/2;
    sy=width/2;
  }
}
