class Player
{
  //Global Variables
  PVector pos;
  PVector forward;
  float theta;
  float speed = 2.0f;

  //Constructor
  Player(float x, float y) {
    pos = new PVector(x, y);
    theta = 0;
    forward = new PVector (0, -1);
  }

  //Functions
  void run() {
    display();
    move();
    //gravity
  }

  void move() {
    forward.mult(speed);
    forward.x = sin(theta);
    forward.y = - cos(theta);

    if (key == 'd' ||key == 'D') {
      pos.add(forward);
    }
  }

  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    ellipse(200, height * 0.5f, 60, 60);
    popMatrix();
  }
}