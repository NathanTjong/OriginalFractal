public void setup(){
  size(500, 500);
}

public void draw(){
  //fractal(500, 500, 500);
}

public void mousePressed(){
  background(0);
  if(mouseX>mouseY){
    fractal(500-mouseY, mouseX, mouseY);
  }
  else{
    fractal(500-mouseX, mouseX, mouseY);
  }
}

public void fractal(int size, int posX, int posY){
  if(size<=1){
    ellipse(posX, posY, size, size);
  }
  else{
    if(size%4==0){
      ellipse(250, 500-posY, size, size);
    }
    else if(size%4==1){
      ellipse(500-posX, 250, size, size);
    }
    else if(size%4==2){
      ellipse(250, posY, size, size);
    }
    else if(size%4==3){
      ellipse(posX, 250, size, size);
    }
    fractal(size-1, posX-1, posY-1);
  }
}
