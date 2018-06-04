public class Player{
  int x,y,speed,size;
  boolean[] keys = new boolean [5];
  Player(int x1, int y1, int speed1, int size1){
    x = x1;
    y = y1;
    speed = speed1;
    size = size1;
  }
  
  void update(){
    if (keys[1] == true){
      y = y - speed;
    }
    if (keys[2] == true){
      x = x - speed;
    }
    if (keys[3] == true){
      y = y + speed;
    }
    if (keys[4] == true){
      x = x + speed;
    }
    rect(x,y,size,size);
    checkWalls();
  }
  
  void keyP(){
    if (key == 'w'){
      keys[1] = true;
    }
     if (key == 'a'){
      keys[2] = true;
    }
     if (key == 's'){
      keys[3] = true;
    }
     if (key == 'd'){
      keys[4] = true;
    }  
  }
  
  void keyR(){
    if(key=='w'){
    keys[1]=false;
    }
    if(key=='a'){
    keys[2]=false;
    }
    if(key=='s'){
    keys[3]=false;
    }
    if(key=='d'){
    keys[4]=false;
    }
    }
    
    public void checkWalls() {
    if (x < size / 2) {
      keys[1] = false;
      x = size / 2;
    }
    if (x > width - (size * 2)) {
      keys[2] = false;
      x = width - (size  * 2);//prevents 2 true in a row
    }
    if (y < size / 2) {
      keys[3] = false;
      y = size / 2;//prevents 2 true in a row
    }
    if (y > height - (size * 2)) {
      keys[4] = false;
         y = height - (size * 2 ) ;//prevents 2 true in a row
    }
  }
   
}