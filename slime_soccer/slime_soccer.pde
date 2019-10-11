int score, score_2;
float g = 0.65;
ball b;
slime s;
PImage photo;

void setup() {
  size(1125, 520);
  b = new ball();
  s = new slime();

  textAlign(CENTER);
  score = 0;

  photo = loadImage("mål1.png");

}

void draw() {
  background(0,255,255);

  fill(0);
textSize(40);
text(score, width/4, 30);
text(score_2, 0.75*width, 30);


  s.render();
  b.render();

  s.update();
  b.update();
  image(photo,0,400,70,120);
image(photo,width-70,400,70,120);


if (b.x.x <= 70 && b.x.y >= 400){
score = score + 1; 
 b.x.x = width/2;
 b.x.y = height/2;
 b.v.x = 0;
 b.v.y = 0;
}
 
 if (b.x.x >= width-70 && b.x.y >= 400){
 score_2 = score_2 + 1;
 b.x.x = width/2;
 b.x.y = height/2;
 b.v.x = 0;
 b.v.y = 0;
 }
}

void keyPressed() {
  if (key == 'w' && s.x.y == height) {
    s.jump = true;
  }
  if (key == 'a') {
    s.moveLeft = true;
  }
  if (key == 'd') {
    s.moveRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    s.moveLeft = false;
  }
  if (key == 'd') {
    s.moveRight = false;
  }
}
