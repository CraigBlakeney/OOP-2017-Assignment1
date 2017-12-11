color col = 0;
int i;
Panel panel;
radar radar;
Star star;

//Colour_Selector colour_selector;

void setup()
{
  //Uses full width and height of screen
  fullScreen();
  background(0);
  
  radar = new radar(1800,950, 100, 0.5, color(255,0,0));
  loadPlanets();
  panel = new Panel();
  star = new Star();
  //colour_selector = new Colour_Selector();
}

void loadPlanets()
{
  Table table = loadTable("planets.csv", "header");
  
  for(TableRow row : table.rows())
  {
    Planet planet = new Planet(row);
    planets.add(planet);
  }
}

ArrayList<Planet> planets = new ArrayList<Planet>();
  

void draw()
{ 
  //Makes the cursor a cross
  noCursor();
  cursor(CROSS);
    
  // When the mouse is clicked on a colour the control panel changes to that colour
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
  star.display();
  panel.display();
  
  //colour_selector.display();
  
  for(Planet planet : planets)
  {
    planet.display();
  }

  radar.render();
  radar.update();
 
 
    
}