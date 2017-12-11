class Planet
{
  float xPos;
  float yPos;
  float rCol;
  float gCol;
  float bCol;
  float diameter;
  
  Planet(TableRow row)
  {
    xPos = row.getFloat("xPos");
    yPos = row.getFloat("yPos");
    rCol = row.getFloat("rCol");
    gCol = row.getFloat("gCol");
    bCol = row.getFloat("bCol");
    diameter = row.getFloat("diameter");
  }
  
  void display()
  {
    float counter;
    
    for(counter=0 ; counter < 7 ; counter++)
    {
      stroke(255);
      fill(rCol, gCol, bCol);
      ellipse(xPos,yPos,diameter,diameter);
    }
  }
  
}