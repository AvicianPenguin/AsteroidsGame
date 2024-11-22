class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int []{-8, 16, -8};
    yCorners = new int []{8, 0, 8};
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
