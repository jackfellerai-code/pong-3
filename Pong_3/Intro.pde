void intro () {
  background(LightP);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  
  fill(Turq);
  textSize(80);
  text("PONG", width/2, 150);
}

void introClicks () {
  //if (mouseX > 300 && mouseY < 500 && mouseY > 500 && mouseY < 600); {
   //mode = GAME; }
   
   if(clickedOnRect(200, 500, 300, 125)) {
     mode = GAME;
     intro.pause();
     intro.rewind();
     AI = true;
   }
   //2 player
   if (clickedOnRect(600, 500, 300, 125)) {
     mode = GAME;
     intro.pause();
     intro.rewind();
     AI = false;
   }
}
