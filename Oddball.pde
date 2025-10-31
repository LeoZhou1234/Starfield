class Oddball extends Particle {
  public Oddball() {
    super.setX(200);
    super.setY(200);
    super.setColor(color((int)random(50, 256), (int)random(50, 256), (int)random(50, 256)));
    super.setSize(25);
  }
  
  public void move() {
    super.setX(super.getX() + random(-3, 3));
    super.setY(super.getY() + random(-3, 3));
  }
  
  public void show() {
    noStroke();
    fill(super.getColor());
    rect((float)super.getX(), (float)super.getY(), super.getSize(), super.getSize());
  }
}
