ball Myball;
paddle Pl1;
paddle Pl2;
int Width = 600;
int Height = 300;


void setup (){
  size(600,300);
  background(0);
  Myball = new ball();
  Pl1 = new paddle();
  Pl2 = new paddle();
  Pl1.SetXcord((Width+(Width/30))-Width);
  Pl2.SetXcord((Width-(Width/30)*2));
  Pl1.SetYcord((Height/2)-((Height/5)/2));
  Pl2.SetYcord((Height/2)-((Height/5)/2));
  Myball.ResetBall();
  Myball.SetXVel(2);//testing
  Myball.SetYVel(2);//testing
}
void draw (){
  DrawTable();               
  Pl1.Drawpaddle();
  Pl2.Drawpaddle();
  Myball.Drawball();
}
void keyPressed(){
  if(key == 'w'){
    Pl1.up = true;
    Pl1.down = false;
  }else if(key == 's'){
    Pl1.up = false;
    Pl1.down = true;
  }
  if(keyCode == UP){
  Pl2.up = true;
  Pl2.down = false;
  }else if(keyCode == DOWN){
  Pl2.up = false;
  Pl2.down = true;
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
  if(keyCode == UP){
  Pl2.up = false;
  Pl2.down = false;
  }else if(keyCode == DOWN){
  Pl2.up = false;
  Pl2.down = false;
  }
}
