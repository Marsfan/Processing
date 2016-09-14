
PImage img = createImage(480,480,RGB);
int dimensions;
int framecount = 0;

void setup(){
  size(480, 480);
  dimensions = width * height;
  img.loadPixels();
}
void draw(){
  for(int i = 0; i < dimensions; i++){
    img.pixels[i] = color(random(0,256),random(0,128),(random(0,128)));
  }
  img.updatePixels();
  image(img, 0, 0);
  saveFrame("random-###.png");
  framecount++;
  if(framecount > 10){
    exit();
  }
}