
public class Explosion{
  
  private int XCord = -100;//keeps particles off screen may fix later by putting if statement in draw()
  private int YCord = -100;
  private float Xvel;
  private float Yvel;
  private int Fade;
  
  
  public void Setup(int X, int Y ,int ballXvel){//use ball x/y /reverse ball xvel to use/call in draw ball
    Fade = 255;
    XCord = X;
    YCord = Y;
    if(ballXvel > 0){
    Xvel = int(random(-10, -2));
    }
    if(ballXvel < 0){
    Xvel = int(random(2, 10));
    }
    Yvel = random(-20, 15);
  }

  public void Draw(){//Draws in the table draw function to avoid overlap with board features
    if(Fade <= 0){
    Fade = 0;
    }else{
      Fade -= 4;
    }
    fill(Fade);
    rect(XCord, YCord, Width/90, Height/45);
    XCord = (XCord+int(Xvel));
    YCord = (YCord+int(Yvel));
  }
}
