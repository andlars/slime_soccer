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
    // Slime-objekt med omrids
    fill(255, 0, 0);
    stroke(0);
    arc(x.x, x.y, 2*r, 2*r, PI, 2*PI, CHORD);
    
    // Outer eye
    fill(255);
    stroke(1);
    ellipse(x.x+s.r/2, x.y-s.r/2, 25, 25);

    //Pupil
    noStroke();
    fill(0);
    ellipse(x.x+s.r/2+6.125, x.y-s.r/2, 12.5, 12.5);
  }

  void update() {
    v.y += g*1.7;

    if (moveLeft) {
      v.x += -9;
    }
    if (moveRight) {
      v.x += 9;
    }
    if (jump && x.y == height) {
      v.y = -20;
      jump = false;
    }

    x.add(v);

    if ( x.y > height) {
      x.y = height;
      v.y = 0;
    } 
    v.x = 0;
    if (x.x + r > width) {
      x.x = width - r;
      v.x = -v.x;
    }
    if (x.x - r < 0) {
      x.x = 0 + r;
      v.x = -v.x;
    }
  }
}
