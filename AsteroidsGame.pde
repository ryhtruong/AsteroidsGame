Star[] night = new Star[220];
Spaceship bob = new Spaceship();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
ArrayList <Asteroid> arr = new ArrayList <Asteroid>();

public void setup()
{
  size(400, 400);
  for (int i = 0; i < night.length; i++) {
    night[i] = new Star();
  }
  for (int j = 0; j < 10; j++) {
    arr.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < night.length; i++) {
    night[i].show();
  }
  bob.move();
  bob.show();
  for (int i = 0; i < arr.size(); i++) {
    arr.get(i).show();
    arr.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)arr.get(i).getCenterX(), (float)arr.get(i).getCenterY());
    if (d < 20){
      arr.remove(i);
      bullet.remove(i)
}
  }
 for(int i = 0; i < bullet.size(); i++){
    bullet.get(i).move();
    bullet.get(i).show();

    }   
for(int i = 0; i < bullet.size(); i++){
    for(int j = 0; j < arr.size(); j++){
      if(dist((float)bullet.get(i).getX(), (float)bullet.get(i).getY(), (float)arr.get(j).getCenterX(), (float)arr.get(j).getCenterY()) < 15){
      arr.remove(j);
      bullet.remove(i);
      break;
    }
    }
  }
if(dPress == true)
{
  bob.turn(10);
}
if(aPress == true)
{
  bob.turn(-10);
}
if(wPress == true)
{  
  bob.accelerate(0.2);  
}
if(sPress == true)
{  
bob.accelerate(-0.2);
}
}
public void keyPressed() {
 if (key == 'a')
    {
      aPress = true;
    }

    if (key == 'd')
    {
      dPress = true;
    }

    if(key == 'w')
    {
      wPress = true;
    }
     if (key == 's')
    {
      sPress = true;
    }
    if (key == 'h') {
      bob.hyperSpace();
  }
    if (key == ' '){
      bullet.add(new Bullet(bob));
}
}
private boolean dPress;
private boolean aPress;
private boolean wPress;
private boolean sPress;
public void keyReleased()
{
  if (key == 'd')
  {
    dPress = false;
  } 

  if (key == 'a')
  {
    aPress = false;
  }

  if (key == 'w')
  {
    wPress = false;
  }
   if (key == 's')
  {
    sPress = false;
  }
}
