class Data
{
  
  void display()
  {
    fill(255);
    rect(200,950,300,128);
    textSize(13);
    fill(99,211,145);
    text("Hover over Planet to find out info.", 225, 945);
    fill(255,0,0);
    text("Planet Name:", 215, 970);
    text("Amount of Moons:",215,1000);
    text("Planet Diameter:", 215, 1030);

      if(mouseX > 275 && mouseX < 325 && mouseY > 75 && mouseY < 125)
      {
        fill(255,0,0);
        textSize(13);
        text("Mars", 300, 970);
        text("2", 335,1000);
        text("6792km", 325,1030);
      }
      
    
    
  }
}