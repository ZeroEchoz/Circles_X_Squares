class Bullets
{
  //Global Variable
  PVector pos;
  PVector forward;
  //rotation 
  float theta;
  float w;
  float halfW;
  float shipX = 200;
  float shipY = height * 0.5f;
  //float bulletX;
  //float bulletY;
  //float bulletR;

  //Constructor
  Bullets(float x, float y) {
    pos = new PVector(x, y);
    theta = 0; //no rotation initially
    forward = new PVector (0, -1);
    w = 50.0f;
    halfW = w/2;
  }
  //Functions
  void run() {
    //forward.x = sin(theta);
    //forward.y = -cos(theta);
    //pos.add(forward);
    render();
    update();
  }

  void render() {

    pushMatrix();
    translate(pos.x, pos.y);
    float theta = atan2(mouseY - height/2, mouseX - width/2);
    rotate(theta);
    ellipse(shipX, shipY, 5, 5);
    //triangle(0 - 5, 2.5, 5, 5, 2.5, 0 - 5);
    popMatrix();
  }

  void update() {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    pos.add(forward);
  }
}