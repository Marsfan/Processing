PImage img;
PImage code;
int dimensions;
int numred = 0;
char alphabet[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', '0'};
String message = "";
int[] validPixels;
int arrayCount = 0;

void setup(){
  img = loadImage("encoded.png");
  code = loadImage("random-001.png");  
  size(1024,1024);
  dimensions = img.width * img.height;
  img.loadPixels();
  code.loadPixels();
  code.loadPixels();
   for(int q = 0; q < dimensions; q++){
     if(red(code.pixels[q]) > 192 && blue(code.pixels[q]) < 64 && green(code.pixels[q]) < 6){
     numred++;
    }
   }
   validPixels = new int[numred];
   for(int q = 0; q < dimensions; q++){
    if(red(code.pixels[q]) > 192 && blue(code.pixels[q]) < 64 && green(code.pixels[q]) < 6){
    validPixels[arrayCount] = q;
    arrayCount++;
    }
   }
   for(int q = 0; q < validPixels.length; q++){ //<>// //<>//
     int pixval;
     pixval = int(red(img.pixels[validPixels[q]]));
     if(pixval > alphabet.length){
       pixval = alphabet.length - 2;
     }
     message = message + alphabet[pixval];
   }
}
  void draw(){
    println(message);
  }
    
  