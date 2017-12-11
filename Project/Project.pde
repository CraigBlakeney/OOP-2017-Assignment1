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