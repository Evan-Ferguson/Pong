public class table{
private int Pl1Score = 0;
private int Pl2Score = 0;

  public void Drawtable(){
  String Pl1Scr = str(Pl1Score);
  String Pl2Scr = str(Pl2Score);
  background(0);
  
    for (int i = 0; i < NumScrParticles; ++i) {//Esplosion draws all 25 particles
    ScrExplosion[i].ScrDraw();
    }
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion draw
    BounceExplosion[i].BounceDraw();
    }
    
  for(int Y=Height/12; Y<=Height-Height/12; Y+=(Height/8)){//Draw center dotted line
  fill(150);
  rect((Width/2)-((Width/60)/2), Height-Y, Width/60, Height/12);
  }
  rect((Width/2)-((Width/4)/2), Height/6, Width/4, Height/60);//bottom
  rect((Width/2)-((Width/4)/2), 0, Width/120, Height/6);//left
  rect((Width/2)+(((Width/4)/2)-(Width/120)), 0, Width/120, Height/6);//right
  rect((Width/2)-((Width/120)/2), 0, Width/120, Height/6);//middle
  //Draw score board
  rect((Width/2)-((Width/4)/2), Height/6, Width/4, Height/60);//bottom
  rect((Width/2)-((Width/4)/2), 0, Width/120, Height/6);//left
  rect((Width/2)+(((Width/4)/2)-(Width/120)), 0, Width/120, Height/6);//right
  rect((Width/2)-((Width/120)/2), 0, Width/120, Height/6);//middle
  //draw nets
  for(int Y=Height/12; Y<=Height; Y+=(Height/6)){//Pl1 Net
  fill(255, 0, 0);
  rect(Width-(Width/120), Height-Y, Width/120, Height/12);
  }
  for(int Y=Height/12; Y<=Height; Y+=(Height/6)){//Pl2 Net
  fill(255, 0, 0);
  rect(0, Height-Y, Width/120, Height/12);
  }
  //draw score
  fill(140);
  textAlign(CENTER, CENTER);
  textSize(40);
  text(Pl1Scr, (Width/2)-((Width/4)/2), 0, (Width/8), (Height/6));//player 1 score
  text(Pl2Scr, (Width/2)-((Width/120)/2), 0, (Width/8), (Height/6));//player 2 score
  }
  
  public int Pl1NetCord(){
    return 0;
  }
  
  public int Pl2NetCord(){
    return Width;
  }
  
  public void Pl1Score(){
    Pl1Score ++;
  }
  
  public void Pl2Score(){
    Pl2Score ++;
  }
  
  public void Explosion(int X, int Y){//x,y cord of explosion(Use x,y of ball/call in ballDraw)
    
  }
  
  
  public void GeometryCheck(){
    if (Width>Height && !(Width<Height) && !(Width==Height)){
  println("Your ready to play!");
  text("Your ready to play!", 0, 0, 50,50);//text x,y,width,height
  return;
}
else {
  println("Please make the width greater than the Height");
  exit();
}
  }
}
