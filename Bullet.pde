class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.GetSX();
    myCenterY = bob.GetSY();    
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = bob.GetPointDirection();
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10.0, 10.0); 
  }
  public double GetBX(){
    return myCenterX;
  }
  public double GetBY(){
    return myCenterY;
  }
}
