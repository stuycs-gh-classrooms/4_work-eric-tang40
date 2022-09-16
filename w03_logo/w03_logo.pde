void setup() {
  size(400,400);
}

void draw() {
  fill(0);
  rect(0,0,width,height);
  fill(255);
  rect(90,110,190,90);
  rect(90,200,20,60);
  rect(140,200,20,60);
  rect(190,200,20,60);
  rect(240,200,20,60);
  rect(40,145,50,20);
  ellipse(290,155,90,90);
  triangle(276,114,278,95,292,112);
  triangle(311,118,327,111,326,130);
  text("I'm doing this late at night so it's bad ", 10, 60);
  text("Made a mouse tracker though ", 10, 80);
}

void mouseClicked() {
  println ("Mouse X Position: "+ mouseX +", Mouse Y Position: " + mouseY);
}
