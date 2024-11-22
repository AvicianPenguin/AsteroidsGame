class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int []{(int)(myCenterX-8), (int)myCenterX+16), (int)(myCenterX-8)};
    yCorners = new int []{(int)(myCenterY-8), (int)(myCenterY), (int)(myCenterY-8)};
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(255,0,0);
    myPointDirection = (double)(Math.random()*(2*PI));
    myXspeed = 0;
    myYspeed = 0; 
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (double)(Math.random()*(2*PI));
    myXspeed = 0;
    myYspeed = 0;
  }

}
