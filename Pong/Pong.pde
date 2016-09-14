//Gabe Roper
//April

boolean[] keys = new boolean[4];
int p1 = 170;
int p2 = 170;
int ballx = 200;
int bally = 200;
int speed = 3;
int adsubx = speed;
int adsuby = speed;
int leftscore = 0;
int rightscore = 0;
int start = 0;

void setup(){
 size (480,480); 
 textSize(36);  
 int startx = (int)random(2);
 int starty = (int)random(2);
 if(startx == 1){
 }else{
   adsubx = adsubx * -1;
 }
 if(starty == 1){
 }else{
   adsuby = adsuby * -1;
 }
}



void keyPressed(){
  if(key == 'w'){
    keys[0] = true;
  }
  if(key == 's'){
    keys[1] = true;
  }
  if(key == 'i'){
    keys[2] = true;
  }
  if(key == 'k'){
    keys[3] = true;
  }
}

void keyReleased(){
  if(key == 'w'){
    keys[0] = false;
  }
  if(key == 's'){
    keys[1] = false;
  }
  if(key == 'i'){
    keys[2] = false;
  }
  if(key == 'k'){
    keys[3] = false;
  }
}

void draw(){
  background(0);
  if(keys[0]){
    p1 = p1 - 15;
  }
  if(keys[1]){
    p1 = p1 + 15;
  }
  if(keys[2]){
    p2 = p2 - 15;
  }
  if(keys[3]){
    p2 = p2 +15;
  }
  p1 = constrain(p1, 0, height - 140);
  p2 = constrain(p2, 0, height - 140); 
  rect(10, p1, 20, 140);  
  rect(450, p2, 20, 140);
  rect(ballx, bally, 20, 20);
  if(ballx < 30 && (bally > p1 && bally < p1+140)){
    adsubx = speed;
  }else if(ballx > 430 && (bally > p2 && bally < p2+140)){
    adsubx = -speed;
  }
  if(bally > 460){
    adsuby = -speed;
  }else if(bally < 0){
    adsuby = speed;
  }
  if(ballx < 0){
    rightscore = rightscore + 1;
    adsubx = speed;
  }
  if (ballx > 460){
    leftscore = leftscore + 1;
    adsubx = -speed;
  }
    
  ballx = ballx + adsubx;
  bally = bally + adsuby;
  text(leftscore, 30, 60);
  text(rightscore, 400, 60);
} 