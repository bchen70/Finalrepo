Player player;
void settings(){
  size(700,700);
  player = new Player(350,350,3,20);
}

void draw(){
  background(255);
  player.update();
}

void keyPressed(){
  player.keyP();
}

void keyReleased(){
  player.keyR();
}