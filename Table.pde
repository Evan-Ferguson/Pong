void DrawTable(){
  background(0);
  for(int Y=0; Y<=Height; Y+=(Height/8)){
  fill(150);
  rect((Width/2)-((Width/60)/2), Height-Y, Width/60, Height/12);
  }
}
