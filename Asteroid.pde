class Asteroid extends Floater{
  private int RotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int []{(int)(myCenterX-11-(int)(Math.random()*20)), (int)(myCenterX+7+(int)(Math.random()*20)), (int)(myCenterX+13+(int)(Math.random()*12)),(int)(myCenterX+6), (int)(myCenterX-11), (int)(myCenterX-5)};
    yCorners = new int []{(int)(myCenterY-8),(int)(myCenterY-8-(int)(Math.random()*20)),(int)(myCenterY), (int)(myCenterY+10), (int)(myCenterY+8), (int)(myCenterY+(int)(Math.random()*8))};
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*400);
    myColor = color(255,255,255);
    myPointDirection = (double)(Math.random()*(2*PI));
    myXspeed = (double)(Math.random()+0.3);
    myYspeed = (double)(Math.random()+0.3); 
    RotSpeed = (int)(Math.random()*(2*PI));
  }
  public void move(){
    turn(RotSpeed);
    super.move();
  } 
  public double GetAX(){
    return myCenterX;
  }
    public double GetAY(){
    return myCenterY;
  }
}
