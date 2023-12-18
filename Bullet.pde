class Bullet extends Floater
{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    accelerate(100);
    myPointDirection = bob.getPointDirection();
  }
  public void show(){
    fill(0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    double dRadians = myPointDirection*(Math.PI/180);        
    myXspeed = ((10) * Math.cos(dRadians));    
    myYspeed = ((10) * Math.sin(dRadians));
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
       
  }
}
