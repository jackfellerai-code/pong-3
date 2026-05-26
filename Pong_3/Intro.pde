void intro () {
  background(LightP);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  
  fill(Turq);
  textSize(80);
  text("PONG", width/2, 150);
}

void introClicks () {
  if (mouseX > 300 && mouseY < 500 && mouseY > 500 && mouseY < 600); {
   mode = GAME; }
}
