      int outsum = 0;
        
        void setup()
  {
      noLoop();
      size(355,385);
  }
  void draw()
  {
     background(0,0,0);
    for (int l = 5; l<=330; l = l + 35){
      for (int i = 5; i<= 330; i=i+35){
       Die bob = new Die(l,i);
       bob.show();
      }
    }
    
  fill(255,255,255);
  text("total =" ,150,365);
 text(outsum ,190,365);
  }
  
  void mousePressed()
  {
    outsum = 0;
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      int roll;
      int sum = 0;
      
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        roll = (int)(Math.random()*6+1);
         outsum += roll;
      }
      void roll()
      {
      roll = (int)(Math.random()*6+1);
      sum = sum + roll;
     
      }
      void show()
      {
        fill(255,255,255);
        rect(myX,myY,30,30,7);
        fill(0,0,0);
       if (roll == 1) {
    ellipse(myX + 15, myY + 15, 5, 5);
} else if (roll == 2) {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
} else if (roll == 3) {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
} else if (roll == 4) {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 10, myY + 20, 5, 5);
    ellipse(myX + 20, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
} else if (roll == 5) {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 10, myY + 20, 5, 5);
    ellipse(myX + 20, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
} else if (roll == 6) {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 10, myY + 20, 5, 5);
    ellipse(myX + 20, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    ellipse(myX + 10, myY + 15, 5, 5);
    ellipse(myX + 20, myY + 15, 5, 5);
}

        
          
      }
  }



