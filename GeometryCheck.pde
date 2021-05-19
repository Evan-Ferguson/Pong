void geometryCheck() {
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
