float g = 0.65;
ball b;
slime s;
PImage photo;
final byte countdown = 120;
static int seconds, startTime;


void setup() {
  size(1125, 520);
  b = new ball();
  s = new slime();
  photo = loadImage("mål1.png");
  textSize(50);
  startTime = millis()/1000 + countdown;

  if (countdown <= 0) {
    exit();
  }
}

void draw() {
  background(255);
  s.render();
  b.render();

  s.update();
  b.update();
  image(photo, 0, 400, 70, 120);
  image(photo, width-70, 400, 70, 120);
  fill(0);
  textAlign(CENTER);
  seconds = startTime - millis()/1000;

  if (seconds < 0)    startTime = millis()/1000 + countdown;
  else                text(seconds, width/2, 50);
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
