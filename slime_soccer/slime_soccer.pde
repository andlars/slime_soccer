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
image(photo,-100,270,250,250);
image(photo,975,270,250,250);
  s.render();
  b.render();

  s.update();
  b.update();
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
