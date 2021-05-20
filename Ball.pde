public class ball{
  private int Xcord;
  private int Ycord;
  private int Xvel;//Posative Right|Negative Left
  private int Yvel;//Posative Down |Negative Up
 // private boolean collision = false;
  
  public void Drawball(){
    if((Xcord+Width/30) == Thetable.Pl2NetCord()){//Pl1 score serv to Pl2
      Thetable.Pl1Score();
      ResetBall();
      if(Xvel<0){
        ReverseXvel();
      }
    }
    if(Xcord == Thetable.Pl1NetCord()){//Pl2 score serv to Pl1
      Thetable.Pl2Score();
      ResetBall();
      if(Xvel>0){
        ReverseXvel();
      }
    }
    if((Xcord+Width/30) >= Pl2.ReturnXcord() && (Ycord+Height/15) >= Pl2.ReturnYcord() && Ycord <= (Pl2.ReturnYcord() + (Height/5))){//Check collision with Pl2 paddle
      ReverseXvel();
    }
    if((Xcord-Width/30) <= Pl1.ReturnXcord() && (Ycord+Height/15) >= Pl1.ReturnYcord() && Ycord <= (Pl1.ReturnYcord() + (Height/5))){//check collision with Pl1 paddle
      ReverseXvel();
    }

    if(Ycord<=0){//Checks top/bottom collision
      Ycord = 0;
      ReverseYvel();
    }
    if(Ycord>=(Height-(Height/15))){
      Ycord = (Height-(Height/15));
      ReverseYvel();
    }
    fill(255);
    Xcord += Xvel;
    Ycord += Yvel;
    rect(Xcord, Ycord, Width/30, Height/15);
  }
  
  public void ResetBall(){//center of screen - half size of ball(centers ball on screen)
   Xcord = (Width/2)-((Width/30)/2);
   Ycord = (Height/2)-((Height/15)/2);
  }
  
  public void ReverseXvel(){
    Xvel = 0-Xvel;
  }
  public void ReverseYvel(){
    Yvel = 0-Yvel;
  }
  
  public void SetXVel(int X){
    Xvel = X;
  }
  public void SetYVel(int Y){
    Yvel = Y;
  }
  
}
