public class paddle{
  private int Xcord;
  private int Ycord;
  private int Yvel;//Posative Down |Negative Up
  
  public void Drawpaddle(){
    if(Ycord<=0){
      Ycord = 0;
    }
    if(Ycord>=(Height-(Height/5))){
      Ycord = (Height-(Height/5));
    }
    fill(255);
    Ycord += Yvel;
    rect(Xcord, Ycord, Width/30, Height/5);
  }
  public void SetXcord(int X){
    Xcord = X;
  }
  public void SetYcord(int Y){
    Ycord = Y;
  }
  public void MovepaddleUp(){
    Yvel = -4;
  }
  public void MovepaddleDown(){
    Yvel = 4;
  }
  public void paddleStay(){
    Yvel = 0;
  }
}
