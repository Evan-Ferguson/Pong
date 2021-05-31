Boolean Moving = false;
int location;

void Pl2Ai(){
  if(Pl2Mode == false){
  if(AiEasy == true){
  if(Moving = false){
    location = int(random(0, (Height-Height/5)));
    Moving = true;
  }else{
    if(Pl2.ReturnYcord() > location){
        Pl2.up = false;
        Pl2.down = true;
    }else if(Pl2.ReturnYcord() < location){
       Pl2.up = true;
        Pl2.down = false;
    }else if(Pl2.ReturnYcord() == location){
        Pl2.up = false;
        Pl2.down = false;
      Moving = false;
    }
  }
  }
  if(AiHard == true){
    
  }
}
}
