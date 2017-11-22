color col = 0;

void setup()
{
  //Uses full width and height of screen
  fullScreen();
  background(0);
}

void draw()
{
  fill(0,10);
  rect(0,0,width,700);
  fill(255);
  ellipse(random(width), random(height), 6,6);

  noCursor();
  cursor(CROSS);
    
  fill(col);
  rect(0,700,1919,385,7);
  noStroke();
  fill(255);
  rect(0,950,150,128,7);
  fill(99,211,145);
  textSize(9);
  text("CHOOSE CONTROL PANEL COLOUR", 2, 948);
  
  stroke(99,211,145);
  fill(255);
  rect(0,950,50,128,0,0,0,7);
  fill(0);
  rect(50,950,50,128);
  fill(0,0,205);
  rect(100,950,50,128,0,7,7,0);
  noStroke();
  
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