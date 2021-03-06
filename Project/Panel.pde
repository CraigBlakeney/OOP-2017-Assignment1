class Panel
{
  void display()
  {
    //Draws the control panel
    noStroke();
    fill(col);
    rect(0,700,1920,385,7);
    
    //Colour selection 
    rect(0,950,150,128,7);
   
    //Creates text
    fill(99,211,145);
    textSize(9);
    text("CHOOSE CONTROL PANEL COLOUR", 2, 948);
    
    //Creates the differnet boxes to select each colour
    stroke(99,211,145);
    fill(255);
    rect(0,950,50,128,0,0,0,7);
    fill(0);
    rect(50,950,50,128);
    fill(0,0,205);
    rect(100,950,50,128,0,7,7,0);
    
    //Checks if the mouse has has been pressed and changes the control panel to the corresponding colour.
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
  
}