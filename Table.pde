public class table{
private int Pl1Score = 0;
private int Pl2Score = 0;

  public void Drawtable(){
  String Pl1Scr = str(Pl1Score);
  String Pl2Scr = str(Pl2Score);
  background(0);
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
  //draw score
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
}
