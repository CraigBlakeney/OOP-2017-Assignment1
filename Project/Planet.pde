class Planet
{
  float xPos;
  float yPos;
  float col;
  float diameter;
  
  Planet(TableRow row)
  {
    xPos = row.getFloat("xPos");
    yPos = row.getFloat("yPos");
    col = row.getFloat("col");
    diameter = row.getFloat("diameter");
  }
  
  void display()
  {
    float counter;
    
    for(counter=0 ; counter < 7 ; counter++)
    {
      stroke(255);
      fill(col);
      ellipse(xPos,yPos,diameter,diameter);
    }
  }
  
}