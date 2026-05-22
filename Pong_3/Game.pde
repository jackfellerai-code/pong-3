void game() {
  background(FreshS);
  
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //ball
  circle(ballx, bally, balld);
}

void gameClicks() {
 mode = GAMEOVER;
}
