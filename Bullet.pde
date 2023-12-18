class Bullet extends Floater{
  public Bullet(SpaceShip bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
  }
  public void show(){
    fill(142,154,255);
  ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move()  
  {      
    myCenterX += myDirectionX;      
    myCenterY += myDirectionY;    
  }
}
