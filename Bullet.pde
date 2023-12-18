class Bullet extends Floater{
  public Bullet(SpaceShip bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    myDirectionX = 10* Math.cos(myPointDirection*(Math.PI/180)) + bob.getDirectionX();
    myDirectionY = 10* Math.sin(myPointDirection*(Math.PI/180)) + bob.getDirectionY();
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

  public void setX(int x){myCenterX = x;}  
  public void setY(int y){myCenterY = y;}   
  public void setDirectionX(double x){myDirectionX = (double)x;}  
  public void setDirectionY(double y){myDirectionY = (double)y;}  
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  public int getY(){return (int)myCenterY;}  
  public int getX(){return (int)myCenterX;}
  public double getDirectionX(){return myDirectionX;}  
  public double getDirectionY(){return myDirectionY;}   
  public double getPointDirection(){return myPointDirection;} 
}
