PImage img;
PImage code;
int dimensions;
int numred = 0;
char alphabet[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', '0'};
String message = "goody two shoes";
char[] messageArray = new char[message.length()];
int encodePixels[];
int arrayCount = 0;
int validPixels[];
int pixelValue; 
int numencoded = 0;

void setup(){
  message = message.toLowerCase();
  for(int u = 0; u < message.length(); u++){
    messageArray[u] = message.charAt(u);
  }
  img = loadImage("me.jpg");  
  code = loadImage("random-001.png");
  size(1024, 1024);
  frame.setResizable(true);
  frame.setSize(img.width, img.height);
  dimensions = img.width * img.height;
  img.loadPixels();
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
  if(message.length() > numred){
    println("Message longer than" + numred + "Characters, please shorten the message");
  }
  arrayCount = 0; //<>//
  for(int i = 0; i < messageArray.length; i++){ //<>//
    for(int d = 0; d < alphabet.length; d++){
      if(alphabet[d] == messageArray[i]){
        arrayCount = d;
         int givenBlue = int(blue(img.pixels[validPixels[i]]));
         int givenGreen = int(green(img.pixels[validPixels[i]]));
         img.pixels[validPixels[i]] = color(arrayCount, givenBlue, givenGreen);
         numencoded = numencoded + 1;
      }
    }
  }
    
}

void draw(){

  /*int newred = int(map(red * red2 * red3, 0, 1, 0, 255));
    int newgreen = int(map(green * green2 * red3, 0, 1, 0, 255));
    int newblue = int(map(blue * blue2 * red3, 0, 1, 0, 255));*/
  img.updatePixels();
  image(img, 0, 0); //<>//
  saveFrame("encoded.png");
  println(numred);
  println(dimensions);
  println(numencoded);
 
  noLoop();
}
    
    
  