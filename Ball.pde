public class ball extends Objects{
  private int Xvel;//Posative Right|Negative Left
  private int Yvel;//Posative Down |Negative Up

  private ball(){
    super(X, Y);
  }
  
  public void Draw(){
    if((Xcord+Width/30) >= Thetable.Pl2NetCord()){//Pl1 score serv to Pl2
      Thetable.Pl1Score();
    for (int i = 0; i < NumScrParticles; ++i) {//Esplosion setup
    ScrExplosion[i].ScrSetup(Xcord, Ycord, Xvel);
    }
      ResetBall();
      if(Xvel<0){
        ReverseXvel();
      }
    }
    if(Xcord <= Thetable.Pl1NetCord()){//Pl2 score serv to Pl1
      Thetable.Pl2Score();
    for (int i = 0; i < NumScrParticles; ++i) {//Esplosion setup
    ScrExplosion[i].ScrSetup(Xcord, Ycord, Xvel);
    }
      ResetBall();
      if(Xvel>0){
        ReverseXvel();
      }
    }
    if((Xcord+Width/30) >= Pl2.ReturnXcord() && (Ycord+Height/15) >= Pl2.ReturnYcord() && Ycord <= (Pl2.ReturnYcord() + (Height/5))){//Check collision with Pl2 paddle
    Pl1ThrowCounter = 0;//resets oposing player counter
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion setup
    BounceExplosion[i].PaddleBounceSetup(Xcord, Ycord, Xvel);
    }
    if((Xcord+Width/30) > (Pl2.ReturnXcord()+Width/90)){//can only "catch" ball if ball intersects more than 1/3 into the paddle prevents sticking with increased ball vel
      if(Pl2ThrowCounter > 20){
        if(Xvel > 0 && Xvel <= 2){
          Xvel = (Xvel + 2);
        }else if(Xvel < 0 && Xvel >= -2){
        Xvel = (Xvel - 2);
        }
      }else if(Pl2ThrowCounter < 20){
        if(Xvel > 0){
          Xvel = 2;
        }else if(Xvel < 0){
        Xvel = -2;
        }
      }
      Pl2ThrowCounter ++;//adds to current player counter
      ReverseXvel();
    }else if(Xvel > 0){
        Xvel = 2;
        ReverseXvel();
    }
    }
    
    if((Xcord-Width/30) <= Pl1.ReturnXcord() && (Ycord+Height/15) >= Pl1.ReturnYcord() && Ycord <= (Pl1.ReturnYcord() + (Height/5))){//check collision with Pl1 paddle
    Pl2ThrowCounter = 0;
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion setup
    BounceExplosion[i].PaddleBounceSetup(Xcord, Ycord, Xvel);
    } 
    if((Xcord-Width/30) < (Pl2.ReturnXcord()-Width/90)){//can only "catch" ball if ball intersects more than 1/3 into the paddle prevents sticking with increased ball vel
      if(Pl1ThrowCounter > 20){
        if(Xvel > 0 && Xvel <= 2){
          Xvel = (Xvel + 2);
        }else if(Xvel < 0 && Xvel >= -2){
        Xvel = (Xvel - 2);
        }
      }else if(Pl1ThrowCounter < 20){
        if(Xvel > 0){
          Xvel = 2;
        }else if(Xvel < 0){
        Xvel = -2;
        }
      }
      ReverseXvel();
      Pl1ThrowCounter ++;
    }else if(Xvel < 0){ 
        Xvel = -2;
        ReverseXvel();
    }
    }


    if(Ycord<=0){//Checks top/bottom collision
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion setup
    BounceExplosion[i].WallBounceSetup(Xcord, Ycord, Xvel);
    } 
      Ycord = 0;
      ReverseYvel();
    }
    if(Ycord>=(Height-(Height/15))){
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion setup
    BounceExplosion[i].WallBounceSetup(Xcord, Ycord, Xvel);
    } 
      Ycord = (Height-(Height/15));
      ReverseYvel();
    }
    fill(255);
    Xcord += Xvel;
    Ycord += Yvel;
    rect(Xcord, Ycord, Width/30, Height/15);
  }
  
  public void ResetBall(){//center of screen - half size of ball(centers ball on screen)
   if(Xvel > 0 && Xvel > 2){
     Xvel = 2;
   }
   if(Xvel < 0 && Xvel < 2){
     Xvel = -2;
   }
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
  public int ReturnYcord(){
    return(Ycord);
  }
  
}
