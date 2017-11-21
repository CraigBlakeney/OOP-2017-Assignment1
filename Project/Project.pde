void setup()
{
  fullScreen();
  backGround = loadImage("stars2.jpg");
}

PImage backGround;

void draw()
{
  background(0);
  image(backGround,0,0);
  backGround.resize(1920,1080);
}