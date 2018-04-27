float w=10;
float r=0;
float g=0;
float b=0;
float br=random(255);
float bg=random(255);
float bb=random(255);
void setup() {
  size(1200, 800);
  background(br,bg,bb);
  frameRate(100000);
}
 
void keyPressed() {
  if (key=='+')w++;
  if (key=='-')w--;
  if (key=='c' || key=='C'){
    setup();
  }
  if (key=='r' || key=='R') {
    r+=10;
  }
  if (key=='g' || key=='G') {
    g+=10;
  }
  if (key=='b' || key=='B') {
    b+=10;
  }
  if (key=='t' || key=='T') {
    r-=10;
  }
  if (key=='h' || key=='H') {
    g-=10;
  }
  if (key=='n' || key=='N') {
    b-=10;
  }
  if (key=='e' || key=='E') {
    r=255;
  }
  if (key=='f' || key=='F') {
    g=255;
  }
  if (key=='v' || key=='V') {
    b=255;
  }
  if (key=='y' || key=='Y') {
    r=0;
  }
  if (key=='j' || key=='J') {
    g=0;
  }
  if (key=='m' || key=='M') {
    b=0;
  }
}
 
void circle(){
    if (mousePressed){
     if (mouseButton == LEFT){
      fill(r, g, b);
      ellipse(mouseX,mouseY,w,w);
     }
    }
}
void boxi(){
    if (mousePressed){
     if (mouseButton == RIGHT){
      fill(r, g, b);
      rect(mouseX,mouseY,w,w);
     }
    }
}
 
void draw() {
  noStroke();
  circle();
  boxi();
}
