PImage backGround;
color col = 0;

Drop[] drops = new Drop[1250];

void setup()
{
  //Uses full width and height of screen
  fullScreen();
  backGround = loadImage("stars2.jpg");
  
  for (int i = 0; i < drops.length; i++)
  {
    drops[i] = new Drop();
  }
}

void draw()
{
  background(0);
  image(backGround,0,0);
  //Resizes the image to fit the full screen
  backGround.resize(1920,1080);
  
  for(int i = 0; i < drops.length; i++)
  {
    drops[i].fall();
    drops[i].show();
  }
    
  fill(col);
  rect(0,700,1919,378,7);
  noStroke();
  fill(255);
  rect(0,950,150,128,7);
  fill(99,211,145);
  textSize(9);
  text("CHOOSE CONTROL PANEL COLOUR", 2, 948);
  
  fill(255);
  rect(0,950,50,128,0,0,0,7);
  fill(0);
  rect(50,950,50,128);
  fill(0,0,205);
  rect(100,950,50,128,0,7,7,0);
  
  fill(255);
  
  if(mousePressed)
  {
    if(mouseX > 0 && mouseX < 50 && mouseY > 950 && mouseY < 1080)
    {
      col = color(255);
    }
    else if(mouseX > 50 && mouseX < 100 && mouseY > 950 && mouseY < 1080)
    {
      col = color(0);
    }
    else if(mouseX > 100 && mouseX < 150 && mouseY > 950 && mouseY < 1080)
    {
      col = color(0,0,205);
    }
  }
}