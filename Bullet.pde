class Bullet extends Floater{
  public Bullet(Spaceship bob){
    corners = 5;
    xCorners = new int[]{1, 3, 1, -2, -2};
    yCorners = new int[]{-1, 0, 1, 1, -1};
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    myColor = color(200);
    accelerate(6.0);
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
