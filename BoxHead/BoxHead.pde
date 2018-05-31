player player;
void settings(){
  size(600,600);
  player = new player(400,400,3,20);
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