public class ball{
  private int Xcord;
  private int Ycord;
  private int Xvel;//Posative Right|Negative Left
  private int Yvel;//Posative Down |Negative Up
  
  public void Drawball(){
    rect(Xcord+Xvel, Ycord+Yvel, Width/30, Height/15);
    fill(255);
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
  public void SetBallVel(){
    Xvel = 60;
  }
}
