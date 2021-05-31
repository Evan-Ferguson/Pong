Boolean Moving = false;
int location;

void Pl2Ai(){
  if(Pl2Mode == false){
  if(AiEasy == true){
  if(Moving == false){
    location = int(random(0, (Height-(Height/5))));
    Moving = true;
  }else{
    
 if(Pl2.ReturnYcord() == location || Pl2.ReturnYcord() == (location+1) || Pl2.ReturnYcord() == (location-1) || Pl2.ReturnYcord() == (location+2) || Pl2.ReturnYcord() == (location-2)){
        Pl2.up = false;
        Pl2.down = false;
      Moving = false;
    }else if(Pl2.ReturnYcord() > location){
       Pl2.up = true;
        Pl2.down = false;
    }else if(Pl2.ReturnYcord() < location){
        Pl2.up = false;
        Pl2.down = true;
    }
  }
  }
  
  
  if(AiHard == true){
    if(Pl2.ReturnYcord()+(Height/10) < myball.ReturnYcord()){
        Pl2.up = false;
        Pl2.down = true;
    }
    if(Pl2.ReturnYcord()+(Height/10) > myball.ReturnYcord()){
        Pl2.up = true;
        Pl2.down = false;
    }
    if(Pl2.ReturnYcord()+(Height/10) == myball.ReturnYcord()){
        Pl2.up = false;
        Pl2.down = false;
    }
  }
}
}
