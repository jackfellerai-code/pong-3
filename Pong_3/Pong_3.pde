//Pong
//Jack Feller
//May, 13, 2026

//color gradientBlues
 color  Purple = #7400B8;
 color  LightP = #6930C3;
 color  BlueP  = #5E60CE;
 color BlueE =  #5390D9;
 color FreshS = #4EA8DE;
 color SkyS = #48BFE3;
 color StrongC = #56CFE1;
 color PearlA =  #64DFDF;
 color Turq = #72EFDD;
 color Aquamarine = #80FFDB;


//mode framwork
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;
boolean AI;

int leftscore, rightscore, timer;

int clickedOnRect() {
  rect(0, 0, 100, 100);
}

//keyboard variables 
boolean wkey, skey, upkey, downkey;

PFont myFont;
void setup() {
  size(800, 600);
  mode = INTRO;
  myFont = loadFont("AgencyFB-Bold-48.vlw");
  
  //intitilize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initiialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-3,3);
  vy = random(-3,3);
  
  rightscore = leftscore = 0;
  timer = 100;
  
   wkey = skey = upkey = downkey = false;
}

void draw() {
  println(mouseX, mouseY);
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error" + mode);
  }
}
