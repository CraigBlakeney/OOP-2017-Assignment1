class Star
{
  //Generates random positions for the x and y.
  //Also generates a random brightness for the star.
  float y = random(0,700);
  float x = random(width);
  float brightness = random(75,255);
  
 void display()
 {
  //Draws the star
  noStroke();
  fill(brightness);
  ellipse(x,y,6,6);
 }
}