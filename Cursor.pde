class Cursor
{
  //Global Variables
  float cursorR;
  PVector pos;
  
  //Constructor
    Cursor(float x, float y) {
    pos = new PVector(x, y);
  }
  
  //Functions
  void run() {
  display();
  }
  
  void display() {
    stroke(255);
    fill(0);
    ellipse(mouseX, mouseY, 20, 20);
    ellipse(mouseX, mouseY, 5, 5);
  }
}