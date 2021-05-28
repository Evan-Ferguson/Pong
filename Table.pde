public class table{
private int Pl1Score = 0;
private int Pl2Score = 0;
private String MODE;

  public void Drawtable(){
  String Pl1Scr = str(Pl1Score);
  String Pl2Scr = str(Pl2Score);
  background(0);
  
    for (int i = 0; i < NumScrParticles; ++i) {//Esplosion draws all particles
    ScrExplosion[i].ScrDraw();
    }
    for (int i = 0; i < NumBounceParticles; ++i) {//Bounce Esplosion draw
    BounceExplosion[i].BounceDraw();
    }
    
  for(int Y=Height/12; Y<=Height-Height/12; Y+=(Height/8)){//Draw center dotted line
  fill(150);
  rect((Width/2)-((Width/60)/2), Height-Y, Width/60, Height/12);
  }
  //Draw score board
  rect((Width/2)-(Width/8), Height/6, Width/4, Height/60);//bottom
  rect((Width/2)-(Width/8), 0, Width/120, Height/6);//left
  rect((Width/2)+((Width/8)-(Width/120)), 0, Width/120, Height/6);//right
  rect((Width/2)-(Width/240), 0, Width/120, Height/6);//middle
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
  
  Buttons();
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
  
  public void Buttons(){
  if(Pl1Mode == true && Pl2Mode == false){
    MODE = "Single Plr";
  }else if(Pl1Mode == false && Pl2Mode == true){
    MODE = "Two Plr";
  }
 
    if(Pause != true){
    //drawing the buttons
    textAlign(CENTER, CENTER);
    textSize(8);
    rect((Width/2)-(Width/6), 0, Width/24, Height/24);
    fill(0);
    text("OPT", (Width/2)-(Width/6), 0, Width/24, Height/24);
    
    fill(140);
    rect((Width/2)+(Width/8), 0, Width/24, Height/24);
    fill(0);
    text("QUIT", (Width/2)+(Width/8), 0, Width/24, Height/24);
  
  if(mouseClick == true){
    //Check if clicked//button function
    if(mouseX>(Width/2)-(Width/6) && mouseX<((Width/2)-(Width/6)+Width/24) && mouseY>0 && mouseY<Height/24){//option button
      Pause = true;
    }
    if(mouseX>(Width/2)+(Width/8) && mouseX<((Width/2)+(Width/8)+Width/24) && mouseY>0 && mouseY<Height/24){//Quit button
      exit();
    }
    mouseClick = false;
  }
    }else{
      //draw menu buttons
    textAlign(CENTER, CENTER);
    textSize(30);
    fill(140);
    rect(((Width/2)-Width/8), Height/4, Width/4, Height/8);//Resume button
    fill(0);
    text("Resume",((Width/2)-Width/8), Height/4, Width/4, Height/8);
    
    textAlign(LEFT, CENTER);
    textSize(20);
    fill(140);
    rect(((Width/2)-Width/8), Height/2, Width/4, Height/8);//Mode button
    fill(0);
    text("Mode:" + MODE,((Width/2)-Width/8), Height/2, Width/4, Height/8);
    
    if(mouseClick == true){
    //button functions
    if(mouseX>(Width/2)-(Width/8) && mouseX<((Width/2)-(Width/8)+Width/4) && mouseY>Height/4 && mouseY<((Height/4)+Height/8)){//Resume button
      Pause = false;
    }
    if(mouseX>(Width/2)-(Width/8) && mouseX<((Width/2)-(Width/8)+Width/2) && mouseY>Height/2 && mouseY<((Height/2)+Height/8)){//Mode button
      if(Pl1Mode == true && Pl2Mode == false){
        Pl1Mode = false;
        Pl2Mode = true;
      }else if(Pl1Mode == false && Pl2Mode == true){
        Pl1Mode = true;
        Pl2Mode = false;
      }
    }
    mouseClick = false;
   }
   if(Pl1Mode == true){//Ai level button
    textAlign(CENTER, CENTER);
    textSize(30);
    fill(140);
    rect(((Width/2)-Width/8), ((Height/2)+Height/8), Width/4, Height/8);
    fill(0);
    text(AiLevel,((Width/2)-Width/8), ((Height/2)+Height/8), Width/4, Height/8);
     if(mouseClick == true){
       println("H");
       if(mouseX>(Width/2)-(Width/8) && mouseX<((Width/2)-(Width/8)+Width/2) && mouseY>((Height/2)+Height/8) && mouseY<((Height/2)+(Height/4))){//ai level button//DOUSNT WORK
       println("h");
         if(AiEasy == true && AiHard == false){
           AiEasy = false;
           AiHard = true;
           AiLevel = "Hard";
         }else if(AiEasy == false && AiHard == true){
           AiEasy = true;
           AiHard = false;
           AiLevel = "Easy";
         }
       }
       mouseClick = false;
     }
   }else{
    textAlign(CENTER, CENTER);
    textSize(30);
    fill(140);
    rect(((Width/2)-Width/8), ((Height/2)+Height/8), Width/4, Height/8);
    fill(0);
    text("Null",((Width/2)-Width/8), ((Height/2)+Height/8), Width/4, Height/8);
   }
   
    }
  }
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
