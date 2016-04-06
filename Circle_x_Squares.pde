
//Gitbash check ins: 
//git add .
//git commit -m "Insert msg here"
//git push
void setup() {
  size(1000, 600);
  smooth();
  
  //Initialize
  player = new Player(200, 200);
  turret = new Turret(200, 200);
}

boolean[] keys = new boolean [2000];

void keyPressed() {
  keys[keyCode] = true;
}

void keyReleased() {
  keys[keyCode] = false;
}

//Declare
Player player;
Turret turret;



void draw(){
  background(0);
  
  //Call Functionality
  player.run();
  turret.run();
}