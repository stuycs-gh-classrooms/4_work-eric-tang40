class Land {
  //instance variables
  int state, nextState;
  int landSize;
  color landColor;
  int x,y;
  
  //constructor
  Land() {
    x = 0;
    y = height/2;
    landSize = 30;
    state = 0;
  }
  
  Land(int plotx, int ploty, int size, int type) {
    x = plotx;
    y = ploty;
    landSize = size;
    state = type;
    nextState = type;
  }
  
  void display() { 
    if(nextState == 0) {
      fill(DIRT_COLOR);
    }
    else if(nextState == 1) {
      fill(FIRE_COLOR);
      this.state = 1;
    }
    else if(nextState == 2) {
      fill(BURNT_COLOR);
    }
    else if(nextState == 3) {
      fill(GRASS_COLOR);
    }
    
    square(x,y,landSize);
  }
  
  void updateNextState(int state) {
    if(this.state == 1) {
      nextState = 2;
    }
    else if(state == 1 && this.state == 3) {
      nextState = 1;
    }
  }
  
  void changeState() {
    if(nextState == 0) {
      display();
    }
    else if(nextState == 1) {
      display();
    }
    else if(nextState == 2) {
      display();
    }
  }
}
