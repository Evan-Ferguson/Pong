public class ball{
  private int Xcord;
  private int Ycord;
  private int Xvel;
  private int Yvel;
  
  public void Drawball(){
    rect(Xcord, Ycord, Width/30, Hieght/15);
    fill(255);
  }
  public void ResetBall(){//center of screen - half size of ball(centers ball on screen)
   Xcord = (Width/2)-((Width/30)/2);
   Ycord = (Hieght/2)-((Hieght/15)/2);
  }
  
  
}
