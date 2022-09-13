void setup() {
  size(400,400, P3D);
}

void draw() {
  fill(111,126,255);
  square(200,150,25);
  line(100,80,340,300);
  
  noStroke();
  lights();
  translate(232, 192, 0);
  sphere(112);
}
