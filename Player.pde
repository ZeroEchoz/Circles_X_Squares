class Player
{
  //Global Variables
  PVector pos;
  PVector up;
  PVector down;
  PVector left;
  PVector right;
  float theta;
  float speed = 2.0f;
  float shipX = 200;
  float shipY = height * 0.5f;

  //Constructor
  Player(float x, float y) {
    pos = new PVector(x, y);
    theta = 0;
    right = new PVector (speed, 0);
    left = new PVector (speed * -1, 0);
    up = new PVector (0, speed * -1);
    down = new PVector (0, speed);
  }

  //Functions
  void run() {
    display();
    move();
    //gravity
  }

  void move() {
    right.mult(speed);
    right.x = sin(theta);
    right.y = - cos(theta);

    if (keys[RIGHT]) {
      pos.sub(left);
    }
    if (keys[LEFT]) {
      pos.add(left);
    }
    if (keys[UP]) {
      pos.add(up);
    }
    if (keys[DOWN]) {
      pos.sub(up);
    }
    if (keys[' ']) {
      Bullets b = new Bullets(pos.x, pos.y);
      b.theta = theta;
      bullet.add(b);
    }
  }

  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    ellipse(shipX, shipY, 60, 60);
    popMatrix();
  }
}