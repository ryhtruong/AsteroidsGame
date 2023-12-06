Star[] night = new Star[220];
Spaceship bob = new Spaceship();
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
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)arr.get(i).getX(), (float)arr.get(i).getY());
    if (d < 20)
      arr.remove(i);
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
