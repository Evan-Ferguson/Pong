public class paddle extends location{
  private int Yvel;//Posative Down |Negative Up
  public boolean up = false;
  public boolean down = false;
  
  private paddle(){
    super(X, Y);
  }
  
  public void Drawpaddle(){
    if(up == true && down == false){
      MovepaddleUp();
    }else if(up == false && down == true){
      MovepaddleDown();
    }else if(up == false && down == false){
      paddleStay();
    }
    fill(255);
    Ycord += Yvel;
    rect(Xcord, Ycord, Width/30, Height/5);
    if(Ycord<=0){
      Ycord = 0;
    }
    if(Ycord>=(Height-(Height/5))){
      Ycord = (Height-(Height/5));
    }
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
  public int ReturnXcord(){
    return Xcord;
  }
  public int ReturnYcord(){
    return Ycord;
  }
}
