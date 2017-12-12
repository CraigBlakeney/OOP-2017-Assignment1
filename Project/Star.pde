class Star
{
  float y = random(0,700);
  float x = random(width);
  
 void display()
 {
  noStroke();
  fill(255);
  ellipse(x,y,6,6);
  
 }
}