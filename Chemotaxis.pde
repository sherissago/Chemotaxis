Chick[] chickies;
void setup() {
  size(500, 500);
  chickies = new Chick[200];
  for (int i = 0; i < chickies.length; i++) {
    chickies[i] = new Chick();
  }
}

void draw() {
  background(187, 208, 164);
  for (int i = 0; i <chickies.length; i++) {
    chickies[i].show();
    chickies[i].walk();
  }

  magnet(mouseX, mouseY);
}


class Chick {
  int myX, myY, myColor;
  Chick() {
    myX= 250;
    myY = 250;
    myColor = color(240, 207, 120);
  }


  void show()
  {
    strokeWeight(0.1);
    fill(myColor);
    ellipse(myX, myY+15, 30, 30);
    ellipse(myX, myY, 20, 20);
    fill(255, 160, 70);
    triangle(myX-4, myY+5, myX+4, myY+5, myX, myY+12);
    fill(0);
    ellipse(myX-3, myY, 1, 1);
    ellipse(myX+3, myY, 1, 1);
  }

  void walk() {

    if (mouseX > myX)
    {
      myX = myX +(int)(Math.random()*3);
    } else if (mouseX <myX)
    {
      myX = myX +(int)(Math.random()*3)-2;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*4);
    } else if (mouseY < myY)
    {
      myY = myY +(int)(Math.random()*4)-3;
    }
  }
}

void magnet(int x, int y)
{
  fill(180, 180, 180);
  rect(mouseX, mouseY, 20, 35);
  fill(220, 0, 0);
  rect(mouseX, mouseY+35, 20, 25);
}
