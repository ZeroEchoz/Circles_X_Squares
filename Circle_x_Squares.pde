
//Gitbash check ins: 
//git add .
//git commit -m "Insert msg here"
//git push
void setup() {
  noCursor();
  size(1000, 600);
  smooth();
  
  //Initialize
  player = new Player(200, 200);
  cursor = new Cursor(mouseX, mouseY);
  //bullets = new Bullets(200, 200);
}

ArrayList<Bullets> bullet = new ArrayList<Bullets>();

boolean[] keys = new boolean [2000];

void keyPressed() {
  keys[keyCode] = true;
}

void keyReleased() {
  keys[keyCode] = false;
}

//Declare
Player player;
Cursor cursor;
Bullets bullets;

void draw(){
  background(0);
  
  //Call Functionality
  player.run();
  cursor.run();
  for(int i = 0 ; i <bullet.size(); i++) {
    Bullets b = bullet.get(i);
    b.render();
    b.update();
  }
}