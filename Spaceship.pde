class Spaceship extends Floater  
{
 public Spaceship() {
  corners = 4;
    xCorners = new int[]{-8, 16, -8, 5};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(200,0 ,0);
    myCenterX = myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperSpace(){
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (Math.random() * 360);
    myCenterX = (Math.random() * 400);
    myCenterY = (Math.random() * 400);
   
  }
 public double getX(){
  return myCenterX;
}
public double getY(){
  return myCenterY;
}
public double getPointDirection(){
  return myPointDirection;
}
public double getXspeed(){
  return myXspeed;
}
 public double getYspeed(){
  return myYspeed;
}
}
