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
    Pl1.MovepaddleUp();
  }else if(key == 's'){
    Pl1.MovepaddleDown();
  }else{
    Pl1.paddleStay();
  }
      if(keyCode == UP){
    Pl2.MovepaddleUp();
  }else if(keyCode == DOWN){
    Pl2.MovepaddleDown();
  }else{
    Pl2.paddleStay();
  }
}
void keyReleased(){
    if(key == 'w'){
    Pl1.paddleStay();
  }else if(key == 's'){
    Pl1.paddleStay();
  }else{
    Pl1.paddleStay();
  }
      if(keyCode == UP){
    Pl2.paddleStay();
  }else if(keyCode == DOWN){
    Pl2.paddleStay();
  }else{
    Pl2.paddleStay();
  }
}
