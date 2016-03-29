void setup() {
  size(1000, 600);
  smooth();
  
  //Initialize
  player = new Player(200, 200);
}

//Declare
Player player;



void draw(){
  background(0);
  
  //Call Functionality
  player.run();
}