void game() {
  background(FreshS);

  //centerline
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(Purple);
  text(leftscore, width/4, 100);
  fill(StrongC);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;

  //paddles
  fill(BlueP);
  circle(leftx, lefty, leftd);
  fill(PearlA);
  circle(rightx, righty, rightd);


  //ball
  fill(Purple);
  circle(ballx, bally, balld);

  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //rightscoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  //lftscoring
  if (ballx > width
  ) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
  }

  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }
}


void gameClicks() {
  mode = GAMEOVER;
}
