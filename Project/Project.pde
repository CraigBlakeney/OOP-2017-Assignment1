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

//loads the data from the CSV file into a constructor
void loadPlanets()
{
  Table table = loadTable("planets.csv", "header");
  
    for(TableRow row : table.rows())
    {
      Planet planet = new Planet(row);
      planets.add(planet);
    }
}

//Creates an arraylist of the planets
ArrayList<Planet> planets = new ArrayList<Planet>();
  

void draw()
{ 
  //Makes the cursor a cross
  noCursor();
  cursor(CROSS);
 
  //Displays the stars
     for(int i = 0; i < stars.length; i++)
    {
      stars[i].display();
    }
 
 //Displays the planets 
    for(Planet planet : planets)
    {
      planet.display();
    }
  
  //Calling the classes 
  panel.display();
  radar.render();
  radar.update();
  radarp.display();
  data.display();
  
}