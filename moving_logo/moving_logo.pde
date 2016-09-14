int xc = 200;
int yc = 192;
float xd = 103;
float yd = 84;
float displacement = 37;


void setup(){
  size(400,400);
}

void draw(){
  background(255);
  if(keyPressed ){
    if(key == '='){
      xd = xd + 1;
      yd = yd + 1.2;
      displacement = displacement + .5;
    }else if(key == '-'){
      xd = xd - 1;
      yd = yd - 1.2;
      displacement = displacement - .5;

    }
  }
  if(keyPressed && (key == CODED)){
    if(keyCode == UP){
      yc = yc + 1;
    }else if(keyCode == DOWN){
      yc = yc - 1;
    }else if(keyCode == LEFT){
      xc = xc - 1;
    }else if(keyCode == RIGHT){
      xc = xc + 1;
    }else{
    }
  }else{
    xc = mouseX;
    yc = mouseY;
  }
  
noFill();
strokeCap(SQUARE);
stroke(255,255,255);
strokeWeight(15);
arc(xc,yc,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
noFill();
strokeWeight(11);
stroke(255,0,0);
arc(xc,yc,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
strokeWeight(7);
stroke(0);
arc(xc,yc,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
strokeWeight(15);
stroke(255,255,255);
arc(xc+displacement,yc+displacement - 5,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
strokeWeight(11);
stroke(255,0,0);
arc(xc+displacement,yc+displacement - 5,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
strokeWeight(7);
stroke(0,0,0);
arc(xc+displacement,yc+displacement - 5,xd,yd,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

}