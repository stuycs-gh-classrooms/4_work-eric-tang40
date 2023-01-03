void setup() { 
  size (1000,700);
}

void draw() {
  fill (#47E3C2);
  rect(0,0,1000,1000);
  noStroke();
    
  fill(255); 
  ellipse(50, 50,530,530); 
  
  fill(#F7F24B); 
  ellipse(0, 0,600,600);
  
  //middle
  fill(#223646);
  rect(550, 400, 200, 450);
  
  fill(#AA41B2);
  rect(500, 350, 200, 450);
  
  //left
  fill(#223646);
  rect(250, 200, 200, 650);
  
  fill(#AA41B2);
  rect(275, 80, 50, 70);
  triangle(275, 80, 300, 30, 325, 80);
  rect(200, 150, 200, 650);
  
  
  //right
  fill(#223646);
  rect(850, 600, 135, 250);
  
  fill(#AA41B2);
  rect(800, 550, 150, 250);
}
