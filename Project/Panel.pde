class Panel
{
  void display()
  {
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
  }
  
}