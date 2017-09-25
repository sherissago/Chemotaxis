Chick[] chickies;
void setup(){
  size(500,500);
  chickies = new Chick[300];
  for (int i = 0; i < chickies.length; i++){
    chickies[i] = new Chick();
}
}

void draw(){
  background(171,209,210);
  for (int i = 0; i <chickies.length; i++){
  chickies[i].show();
  chickies[i].walk();
  }
}


class Chick{
  int myX, myY, myColor;
  Chick(){
    myX= 250;
    myY = 250;
    myColor = color(240,207,97);
  }

  
  void show()
  {
    strokeWeight(0.1);
    fill(myColor);
    ellipse(myX,myY,20,20);
    fill(255,180,70);
    triangle(myX-4,myY+5,myX+4, myY+5,myX,myY+12);
  }
  
  void walk(){
    myX = myX +(int)(Math.random()*3)-1;
    myY = myY +(int)(Math.random()*3)-1;
  }
}
