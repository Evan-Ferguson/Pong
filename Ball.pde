public class ball{
  private int Xcord;
  private int Ycord;
  private int Xvel;//Posative Right|Negative Left
  private int Yvel;//Posative Down |Negative Up
  
  public void Drawball(){
    if(Ycord<=0){
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
