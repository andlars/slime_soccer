class slime {
  PVector x, v;
  float r;
  boolean jump, moveLeft, moveRight;

  slime() {
    r = 60;
    x = new PVector(100, 100);
    v = new PVector(0, 0);
    jump = false;
    moveLeft = false;
    moveRight = false;
  }

  void render() {
    fill(0, 255, 0);
    stroke(0);
    arc(x.x, x.y, 2*r, 2*r, PI, 2*PI, CHORD);
    stroke(1);
    ellipse(x.x+s.r/2, x.y-s.r/2, 25, 25);
    noStroke();
    fill(0);
    ellipse(x.x+s.r/2+6.125, x.y-s.r/2, 12.5, 12.5);
    noStroke();
    fill(255);
    rect(x.x-s.r/2, x.y-s.r+10, 8, 50, 20);
    noStroke();
    fill(255);
    rect(x.x-s.r+7, x.y-s.r/2, 68, 8, 20);
  }

  void update() {
    v.y += g;

    if (moveLeft) {
      v.x += -8;
    }
    if (moveRight) {
      v.x += 8;
    }
    if (jump && x.y == height) {
      v.y = -10;
      jump = false;
    }

    x.add(v);

    if ( x.y > height) {
      x.y = height;
      v.y = 0;
    }

    v.x = 0;
  }
}
