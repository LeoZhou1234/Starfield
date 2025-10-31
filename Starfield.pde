Particle[] particles = new Particle[201];

void setup() {
  background(0);
  size(400, 400);
  particles[0] = new Oddball();
  for (int i = 1; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0);

  for (int i = 0; i < particles.length ; i++) {
    particles[i].move();
    particles[i].show();
    if (particles[i].outOfBounds()) {
      particles[i] = (particles[i] instanceof Oddball ? new Oddball() : new Particle());
    }
  }
}
