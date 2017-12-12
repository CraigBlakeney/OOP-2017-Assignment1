class radar
{
  float ax, ay;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  //Creates the function to draw the radar
  radar(float ax, float ay, float radius, float frequency, color c)
  {
    this.ax = ax;
    this.ay = ay;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    //Updates the radar speed
    theta += speed;
  }
  
  void render()
  {
    //Drawsthe circle for the radar
    stroke(0,255,0);
    fill(0);
    ellipse(ax,ay,radius * 2, radius * 2);
    //The lenght of the trail behind the radar line
    int trailLength = 20;
    float redIntensity = 255 / (float)trailLength;
    
    //Draws the trail lenght
      for(int i = 0; i < trailLength; i++)
      {
        stroke(0, i * redIntensity, 0);
        float x = ax + sin(theta + i * speed) * radius;
        float y = ay - cos(theta + i * speed) * radius;
        line(ax, ay, x, y);
      }
  }
}
    
  
  
  
  
  