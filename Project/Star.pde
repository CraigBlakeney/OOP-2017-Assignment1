class Star
{
  float y = random(0,700);
  float x = random(width);
  float brightness = random(75,255);
  
 void display()
 {
  noStroke();
  fill(brightness);
  ellipse(x,y,6,6);
 }
}