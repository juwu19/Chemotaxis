 Bac[] jed;
void setup(){
  noStroke();
  size(500,500);
  jed = new Bac[50];
  for(int i = 0; i < jed.length; i++){
    jed[i] = new Bac();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < jed.length; i++){
    jed[i].show();
    jed[i].walk();
  }
}

class Bac{
  int myX, myY, myColor;
  Bac(){
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
    myX = myY = 250;
  }
  void walk(){
    if(mouseX > 250){
      myX = myX + (int)(Math.random()*6)-3;
    } else if(mouseX < 250){
      myX = myX + (int)(Math.random()*8)-3;
    }else {
    myX = myX + (int)(Math.random()*7)-3;
  }
    if(mouseY > 250){
      myY = myY + (int)(Math.random()*6)-3;
    } else if(mouseY < 250) {
      myY = myY + (int)(Math.random()*8)-3;
    } else {
      myY = myY + (int)(Math.random()*7)-3;
    }
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}
