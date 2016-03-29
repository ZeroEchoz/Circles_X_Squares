class Player
{
  //Global Variables
  float x = 0;
  float y = 0;
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
    ellipse(x, y, 20, 20);
     ellipse(x+10, y+10, 40, 40);
  }
  
}