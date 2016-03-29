class Player
{
  //Global Variables
  PVector pos;
  PVector forward;
  float theta;
  float speedX = 2;
  float speedY = 2;
  
  //Constructor
  Player(float x, float y){
    pos = new PVector(x, y);
    theta = 0;
    forward = new PVector (0, -1);
  }
  
  //Functions
  void run(){
    display();
    move();
    //gravity
  }
  
  void move() {
    
  }
  
  void display(){
    ellipse(200, height * 0.5f, 60, 60);
  }
  
}