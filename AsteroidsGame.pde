ArrayList <Asteroid> nums;
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
Star [] dots = new Star[250];
public void setup(){
  bob = new Spaceship();
  size(500,500);
  for(int i = 0; i<dots.length; i++){
    dots[i] = new Star();
  }
  nums = new ArrayList <Asteroid>();
  for(int i = 0; i<11; i++)
    nums.add(new Asteroid());
  }

public void draw(){
  background(0);
  for(int i = 0; i<dots.length; i++){
    dots[i].show();
    bob.move();
    bob.show();
  }
  noFill();
  for(int i =0; i<nums.size(); i++){
    nums.get(i).move();
    nums.get(i).show();
    float d = dist((float)bob.GetSX(), (float)bob.GetSY(), (float)nums.get(i).GetAX(), (float)nums.get(i).GetAY());
      if(d<25)
        nums.remove(i);
  } 
  for(int a = 0; a<shots.size(); a++){
    shots.get(a).move();
    shots.get(a).show();
  }

public void keyPressed(){
  if (key == 'w')
    bob.accelerate(0.005);
  if (key == 'r')
    bob.accelerate(-0.005);
  if (key == 'd')
    bob.turn(10);
  if (key == 'a')
    bob.turn(-10);
  if (key =='h')
    bob.hyperspace();
  if (key == ' ')
    shots.add(new Bullet (bob));
}
