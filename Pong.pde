//Basic pong works
ball myball;
paddle Pl1;
paddle Pl2;
table Thetable;
Explosion[] ScrExplosion;
Explosion[] BounceExplosion;
private ArrayList<Objects> ObjectList = new ArrayList<Objects>();

int Width = 600;
int Height = 300;
int NumScrParticles = 25;
int NumBounceParticles = 10;
int Pl1ThrowCounter;//used to count num of bounce in a time interval to allow tracking of a "catch"
int Pl2ThrowCounter;
float val;

Boolean Pause = false;
Boolean Pl2Mode = true;
Boolean Pl1Mode = false;
Boolean mouseClick = false;
Boolean AiHard = false;
Boolean AiEasy = true;
Boolean Start = false;

String AiLevel = "Easy";

void setup (){
  //println(displayWidth);
  //println(displayHeight);
  size(600,300);
  //refer to geometry variables
  background(0);
  Thetable = new table();
  myball = new ball();
  Pl1 = new paddle();
  Pl2 = new paddle();
  ScrExplosion = new Explosion[NumScrParticles];
  BounceExplosion = new Explosion[NumBounceParticles];
  ObjectList.add(Pl1);//order added determines draw order
  ObjectList.add(Pl2);
  ObjectList.add(myball);
  
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
  
  val=random(1)>0.5?-2:2;  //serves randomly to start
  myball.SetXVel(int(val));
  val=random(1)>0.5?-2:2;  
  myball.SetYVel(int(val));
}

private abstract class Objects{
  public int Xcord;
  public int Ycord;
  
  private Objects(int X, int Y){
    Xcord = X;
    Ycord = Y;
  }
  
  public abstract void Draw();
}


void draw(){ 
  if(Start == true){
  if(Pause != true){
  Thetable.Drawtable();
  Pl2Ai();
  for(int i=0; i<ObjectList.size(); i++){
    ObjectList.get(i).Draw();
  }
  }else{
    Thetable.Buttons();
  }
  }else{
    GeometryCheck();
  }
  
}


void keyPressed(){
  if(keyCode == 32){//space bar pressed
    Start = true;
  }
  
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
