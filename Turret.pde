class Turret
{
  PVector pos;
  PVector forward;
  float theta;
  float w;
  float halfW;
  float shipX = 200;
  float shipY = height * 0.5f;
  
  Turret(float x, float y) {
    pos = new PVector(x, y);
    theta = 0;
    forward = new PVector (0, -1);
    w = 50.0f;
    halfW = w/2;
  }
  
  void update() {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    
  }
  
  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    float theta = atan2(mouseY - height/2, mouseX - width/2);
    rotate(theta);
    rect(shipX, shipY, 30, 10);
    stroke(255);
    fill(0);
    popMatrix();
  }
}