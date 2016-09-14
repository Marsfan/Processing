void setup(){
size(400,376);
fill(255,255,255);
rect(0,0,400,400);
fill(0,0,0);
beginShape();
vertex(200,0);
vertex(150,140);
vertex(0,140);
vertex(125,235);
vertex(75,376); 
vertex(200,290);
vertex(325,376);
vertex(275,235);
vertex(400,140);
vertex(250,140);
endShape(CLOSE);

strokeWeight(15);
stroke(255,0,0);
strokeCap(ROUND);
fill(255,0,0);
line(200,50,166,158);
line(166,158,54,157);
line(54,157,143,223);
line(143,223,109,327);
line(109,327,198,263);
line(198,263,289,327);
line(289,327,256,225);
line(256,225,345,159);
line(345,159,234,158);
line(234,158,200,50);

noStroke();
noFill();
strokeCap(SQUARE);
stroke(255,255,255);
strokeWeight(15);
arc(200,192,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

noFill();
strokeWeight(11);
stroke(255,0,0);
arc(200,192,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

noFill();
strokeWeight(7);
stroke(0);
arc(200,192,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);


noFill();
strokeWeight(15);
stroke(255,255,255);
arc(200+37,192+32,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

noFill();
strokeWeight(11);
stroke(255,0,0);
arc(200+37,192+32,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

noFill();
strokeWeight(7);
stroke(0,0,0);
arc(200+37,192+32,103,84,QUARTER_PI,PI+HALF_PI+QUARTER_PI);

fill(255,0,0);
noStroke();
ellipse(165,160, 5, 5);
ellipse(190, 150, 5, 5);
ellipse(220, 153, 5, 5);
ellipse(150, 180, 5, 5);
ellipse(155, 210, 5, 5);
ellipse(200, 235, 5, 5);
ellipse(225, 227, 5, 5);
ellipse(175, 230, 5, 5);
ellipse(262, 187, 5, 5);
ellipse(232, 180, 5, 5);
ellipse(207, 188, 5, 5);
ellipse(190, 207, 5, 5);
ellipse(203, 255, 5, 5);
ellipse(228, 264, 5, 5);
ellipse(255, 261, 5, 5);
ellipse(187, 234, 5, 5);
}

void draw(){
  println(mouseX, mouseY);
}