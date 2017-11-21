class Drop{
  
 float x = random(width);
 float y = random(-500,-50);
 float yspeed = random(4,7);
 float z = random(0,20);
 float len = map(z,0,20,10,20);
 
 
 
 void fall()
 {
   y = y + yspeed;
   yspeed = yspeed + 0.02;
   
   if (y > height)
   {
      y = random(-1000,-100);
      yspeed = random(7,10);
   }
 }
 
 void show()
 {
   stroke(255,255,255);
   line(x,y,x,y+len);
 }
  
}