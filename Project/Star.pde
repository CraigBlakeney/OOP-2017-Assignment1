class Star
{
 void display()
 {
   //Makes the stars fade out 
  noStroke();
  fill(0,12);
  rect(0,0,1920,700);
  //Generates the stars in random positions
  fill(255);
  ellipse(random(width), random(height), 6,6);
  
 }
}