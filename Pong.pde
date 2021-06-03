//Basic pong works
ball myball;
paddle Pl1;
paddle Pl2;
table Thetable;
Explosion[] ScrExplosion;
Explosion[] BounceExplosion;

int Width = 600;
int Height = 300;
int NumScrParticles = 25;
int NumBounceParticles = 10;
int Pl1ThrowCounter;//used to count num of bounce in a time interval to allow tracking of a "catch"
int Pl2ThrowCounter;

Boolean Pause = false;
Boolean Pl2Mode = true;
Boolean Pl1Mode = false;
Boolean mouseClick = false;
Boolean AiHard = false;
Boolean AiEasy = true;

String AiLevel = "Easy";

void setup (){
  //println(displayWidth);//1288
  //println(displayHeight);//720
  size(600,300);
  background(0);
  Thetable = new table();
  myball = new ball();
  Pl1 = new paddle();
  Pl2 = new paddle();
  ScrExplosion = new Explosion[NumScrParticles];
  BounceExplosion = new Explosion[NumBounceParticles];
  for (int i = 0; i < NumScrParticles; ++i) {
    ScrExplosion[i] = new Explosion();
}
  for (int i = 0; i < NumBounceParticles; ++i) {
    BounceExplosion[i] = new Explosion();
}
  Pl1.SetXcord((Width+(Width/30))-Width);
  Pl2.SetXcord((Width-(Width/30)*2));
  Pl1.SetYcord((Height/2)-((Height/5)/2));
  Pl2.SetYcord((Height/2)-((Height/5)/2));
  myball.ResetBall();
  myball.SetXVel(2);//testing add variabele Vel based on rallies without a score etc
  myball.SetYVel(2);//testing
}

abstract class location{
  public int Xcord;
  public int Ycord;
  
  private location(int X, int Y){
    Xcord = X;
    Ycord = Y;
  }
  
}


void draw (){ 
  if(Pause != true){
  Thetable.Drawtable();
  Pl1.Drawpaddle();
  Pl2Ai();
  Pl2.Drawpaddle();
  myball.Drawball();
  }else{
    Thetable.Buttons();
  }
}


void keyPressed(){
  if(key == 'w'){
    Pl1.up = true;
    Pl1.down = false;
  }else if(key == 's'){
    Pl1.up = false;
    Pl1.down = true;
  }
  if(Pl2Mode == true){
  if(keyCode == UP){
  Pl2.up = true;
  Pl2.down = false;
  }else if(keyCode == DOWN){
  Pl2.up = false;
  Pl2.down = true;
  }
  }
}
void keyReleased(){
  if(key == 'w'){
    Pl1.up = false;
    Pl1.down = false;
  }else if(key == 's'){
    Pl1.up = false;
    Pl1.down = false;
  }
  if(Pl2Mode == true){
  if(keyCode == UP){
  Pl2.up = false;
  Pl2.down = false;
  }else if(keyCode == DOWN){
  Pl2.up = false;
  Pl2.down = false;
  }
  }
}

void mouseClicked(){
mouseClick = true;
}
