//Might base Vel valuse on Width and Height variables later for consistency on dif screen sizes
public class Explosion extends location{
  private float Xvel;//+right, -left
  private float Yvel;//+down, -up
  private int Fade;
  
  private Explosion(){
    super(X, Y);
  }
  
  
  public void ScrSetup(int X, int Y ,int ballXvel){//use ball x/y //call in draw ball
    Fade = 255;
    Xcord = X;
    Ycord = Y;
    if(ballXvel > 0){//determines particle Xvel
    Xvel = random(-10, -2);
    }
    if(ballXvel < 0){//determines particle Xvel
    Xvel = random(2, 10);
    }
    Yvel = random(-15, 0);
  }

  public void ScrDraw(){//Draws in the table draw function to avoid overlap with board features
    if(Fade <= 0){
    Fade = 0;
    }else{
      Fade -= 6;
    }
    fill(Fade);
    rect(Xcord, Ycord, Width/90, Height/45);
    Xcord = (Xcord+int(Xvel));
    Ycord = (Ycord+int(Yvel));
    Yvel += 0.5;
  }
  
  public void PaddleBounceSetup(int X, int Y, int ballXvel){
    Fade = 255;
    Xcord = X;
    Ycord = Y;
    if(ballXvel > 0){//determines particle Xvel
    Xvel = random(-10, -2);
    }
    if(ballXvel < 0){//determines particle Xvel
    Xvel = random(2, 10);
    }
    Yvel = random(-10, 10);
  }
  public void WallBounceSetup(int X, int Y, int ballYvel){
    Fade = 255;
    Xcord = X;
    Ycord = Y;
    if(ballYvel > 0){//determines particle Xvel
    Yvel = random(-10, -2);
    }
    if(ballYvel < 0){//determines particle Xvel
    Yvel = random(2, 10);
    }
    Xvel = random(-10, 10);
  }
  
  public void BounceDraw(){
    if(Fade <= 0){
    Fade = 0;
    }else{
      Fade -= 100;
    }
    fill(Fade);
    rect(Xcord, Ycord, Width/180, Height/90);
    Xcord = (Xcord+int(Xvel));
    Ycord = (Ycord+int(Yvel));
  }
  
  void Draw(){//Not used

  }
}
