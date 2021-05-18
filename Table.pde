void DrawTable(){
  background(0);
  for(int Y=Height/12; Y<=Height-Height/12; Y+=(Height/8)){//Draw center dotted line
  fill(150);
  rect((Width/2)-((Width/60)/2), Height-Y, Width/60, Height/12);
  }
  //Draw score board
  rect((Width/2)-((Width/4)/2), Height/6, Width/4, Height/60);//bottom
  rect((Width/2)-((Width/4)/2), 0, Width/120, Height/6);//left
  rect((Width/2)+(((Width/4)/2)-(Width/120)), 0, Width/120, Height/6);//right
  rect((Width/2)-((Width/120)/2), 0, Width/120, Height/6);
}
