class Turret
{

  //Global Variables
  float turretW = 10.0f;
  float turretL = 100.0f;
  float theta;

  //Constructor
  Player(float x, float y) {
    pos = new PVector(x, y);
    theta = 0;

    //Functions
    void run() {
      display();
    }

    void move() {
    }

    void display() {
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      rect(200, height * 0.5f, 60, 60);
      popMatrix();
    }
  }