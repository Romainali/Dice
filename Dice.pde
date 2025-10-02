Dice bob;
void setup()
  {
      noLoop();
      size( 600,670);
     
  }
  void draw()
  {
     background(255);
    int total = 0;
    for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      bob = new Dice(x * 200 + 10, y * 200 + 10);
      bob.roll();
      bob.show();
       total += bob.numDice;
    }
  }

 
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);

text( "Total:" + total, width/2, 640);
}
  void mousePressed()
  {
      redraw();
  }
  class Dice //models one single dice cube
  {
    
int myX, myY, numDice;
Dice(int x, int y) //constructor
 {
   myX = x;
   myY = y;
 }
void roll(){
numDice = (int)(Math.random()*6+1);

 }
 
void show()
      {
fill(255);
rect(myX,myY,180,180);

fill(0);
if( numDice ==1){
  ellipse( myX+90, myY+90, 20,20);
}
else if( numDice ==2){
ellipse( myX+50, myY +140, 20,20);
ellipse( myX +140, myY +40, 20,20);
}
else if (numDice ==3){
ellipse( myX+50, myY +140, 20,20);
ellipse( myX +140, myY +40, 20,20);
ellipse( myX+90, myY+90, 20,20);
}
else if (numDice ==4){
ellipse( myX+50, myY +140, 20,20);
ellipse( myX+50, myY +50, 20,20);
ellipse( myX+130, myY +140,20,20);
ellipse( myX+130, myY +50, 20,20);
}
else if (numDice ==5){
ellipse( myX+50, myY +140, 20,20);
ellipse( myX+50, myY +50, 20,20);
ellipse( myX+130, myY +140,20,20);
ellipse( myX+130, myY +50, 20,20);
 ellipse( myX+90, myY+90, 20,20);
}
else if (numDice ==6){
ellipse( myX+50, myY +140, 20,20);
ellipse( myX +140, myY +40, 20,20);
ellipse( myX+50, myY +40, 20,20);
ellipse( myX +140, myY +90, 20,20);
ellipse( myX+50, myY+90, 20,20);
ellipse( myX+140, myY+140, 20,20);

      }
  }
  }  
