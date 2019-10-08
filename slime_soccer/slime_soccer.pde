float g = 0.65;
ball b;
slime s;
PImage photo;

void setup() {
  size(1125, 520);
  b = new ball();
  s = new slime();
  photo = loadImage("mål1.png");
}

void draw() {
  background(255);
  s.render();
  b.render();

  s.update();
  b.update();
  image(photo,0,400,70,120);
image(photo,width-70,400,70,120);
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
