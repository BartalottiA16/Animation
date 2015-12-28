int x = 50;
int red = 255;
float radius = .25;
void setup()
{
  size(1500,400);
  smooth();
  noFill();
  stroke(255,0,0);
  frameRate(200); //draw screen 2 times every second
  background(255);
}
void draw()
{
  //background(192,192,192); //default gray
  stroke(red,0,red-255);
  ellipse(x,200,radius,radius);
  radius = radius + .25; //radius gets bigger by 10
  x = x + 3;
  red = red - 1;
  //if(red < 0)
  if(radius >100)
  {
    background(255);
    radius = 0; //set radius back to zero
    x = 50;
    red = 255;
  }
}
