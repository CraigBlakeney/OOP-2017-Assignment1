color col = 0;
int i;
Panel panel;
radar radar;
Star[] stars = new Star[150];
Data data;
Radarp radarp;


void setup()
{
  //Uses full width and height of screen
  fullScreen();
  background(0);
  
  radar = new radar(1800,950, 100, 0.5, color(255,0,0));
  loadPlanets();
  panel = new Panel();
  data = new Data();
  radarp = new Radarp();
  
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
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
  
  panel.display();
  
   for(int i = 0; i < stars.length; i++)
  {
    stars[i].display();
  }
 
  for(Planet planet : planets)
  {
    planet.display();
  }

  radar.render();
  radar.update();
  radarp.display();
  data.display();
  
}