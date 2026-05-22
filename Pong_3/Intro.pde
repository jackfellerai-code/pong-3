void intro () {
  background(LightP);
  
  fill(Turq);
  textSize(135);
  createFont("AgencyFB-Bold-48" 150);
  text("PONG", 400, 250);
}

void introClicks () {
  if (mouseX > 300 && mouseY < 500 && mouseY > 500 && mouseY < 600); {
   mode = GAME; }
}
