PImage img;
int size = 480;
int tint = 255;

void setup(){
   background(0);
  size(480, 480);
  img = loadImage("me.jpg");
}

void draw(){
  background(0);
  if(keyPressed){
    if(key == '='){
      size = size + 5;
    }else if (key == '-'){
      size = size - 5;
    }
  }
  size = constrain(size, 0, 480);
  float angle = mouseX/(180/PI);
  translate(size/2, size/2);
  rotate(angle);
  translate(-size/2, -size/2);
  image(img, 0, 0, size, size);
  if(keyPressed){
    if(key == 'r'){
      tint(255, 0, 0);
    }else if(key == 'g'){
      tint(0,255,0);
    }else if(key == 'b'){
      tint(0,0,255);
    }else if(key == 'n'){
      tint(255, 255, 255);
    }
  }
  if(keyPressed){
    if(key == 'l'){
      tint = tint + 5;
    }else if(key == 'd'){
      tint = tint - 5;
    }
  }
  tint = constrain(tint, 0, 255);
  tint(tint);
}

  