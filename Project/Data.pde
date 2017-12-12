class Data
{
  
  void display()
  {
    fill(255);
    rect(200,950,300,128,7);
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
      
      if(mouseX > 555 && mouseX < 645 && mouseY > 255 && mouseY < 345)
      {
        fill(0,255,0);
        text("Neptune", 300, 970);
        text("14", 335, 1000);
        text("49528km", 325, 1030);
      }
      
      if(mouseX > 865 && mouseX < 935 && mouseY > 165 && mouseY < 235)
      {
        fill(0,0,255);
        text("Earth", 300, 970);
        text("1", 335, 1000);
        text("12756km", 325, 1030);
      }
      
      if(mouseX > 1175 && mouseX < 1225 && mouseY > 475 && mouseY < 525)
      {
        fill(50,100,150);
        text("Venus", 300, 970);
        text("None", 335, 1000);
        text("12104km", 325, 1030);
      }
      
      if(mouseX > 1445 && mouseX < 1555 && mouseY > 570 && mouseY < 680)
      {
        fill(200,125,50);
        text("Saturn", 300, 970);
        text("62", 335, 1000);
        text("120536km", 325, 1030);
      }
    
    
  }
}