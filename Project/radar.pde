class radar
{
  float ax, ay;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
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
    theta += speed;
  }
  
  void render()
  {
    stroke(255,0,0);
    fill(0);
    ellipse(ax,ay,radius * 2, radius * 2);
    int trailLength = 20;
    float redIntensity = 255 / (float)trailLength;
    
      for(int i = 0; i < trailLength; i++)
      {
        stroke(0, i * redIntensity, 0);
        float x = ax + sin(theta + i * speed) * radius;
        float y = ay - cos(theta + i * speed) * radius;
        line(ax, ay, x, y);
      }
  }
}
    
  
  
  
  
  