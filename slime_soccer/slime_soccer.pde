float g = 0.3;
ball b;
slime s;

void setup() {
  size(1125, 520);
  b = new ball();
  s = new slime();
}

void draw() {
  background(255);

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
