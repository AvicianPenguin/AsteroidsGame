Spaceship bob = new Spaceship();
Star [] dots = new Star[250];
public void setup(){
  bob = new Spaceship();
  size(500,500);
  for(int i = 0; i<dots.length; i++){
    dots[i] = new Star();
  }
}

public void draw(){
  background(0);
  for(int i = 0; i<dots.length; i++){
    dots[i].show();
    bob.show();
    bob.move();
  }
}

public void keyPressed(){
  if (key == 'w')
    bob.accelerate(0.1);
  if (key == 'r')
    bob.accelerate(-0.1);
  if (key == 'd')
    bob.turn(3);
  if (key == 'a')
    bob.turn(-3);
  if (key =='h')
    bob.hyperspace();
}
