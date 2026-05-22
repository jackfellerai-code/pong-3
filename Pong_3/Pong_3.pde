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

void setup() {
  size(800, 600);
  mode = INTRO;
  
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
  
}

void draw() {
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
