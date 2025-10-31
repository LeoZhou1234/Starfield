public class Particle {
  private double x, y, speed, angle;
  private int rgb, size;
  public Particle() {
    x = y = 200;
    speed = random(1, 4);
    angle = random(0, 2*Math.PI);
    rgb = color((int)random(50, 256), (int)random(50, 256), (int)random(50, 256));
    size = 5;
  }
  
  public double random(double lowerBound, double upperBound) {
    return (Math.random()*(upperBound-lowerBound+1)) + lowerBound;
}
  
  public double getX() {
    return x;
  }
  
  public double getY() {
    return y;
  }
  
  public double getSpeed() {
    return speed;
  }
  
  public int getSize() {
    return size;
  }
  
  public int getColor() {
    return rgb;
  }
  
  public void setX(double x) {
    this.x = x;
  }
  
  public void setY(double y) {
    this.y = y;
  }
  
  public void setSize(int size) {
    this.size = size;
  }
  
  public void setSpeed(double speed) {
    this.speed = speed;
  }
  
  public void setColor(int rgb) {
    this.rgb = rgb;
  }
  
  public void move() {
    x += speed * Math.cos(angle);
    y += speed * Math.sin(angle);
  }
  
  public void show() {
    noStroke();
    fill(rgb);
    ellipse((float)x, (float)y, size, size);
  }
  
  public boolean outOfBounds() {
    return (x > 400 || x < 0 || y > 400 || y < 0);
  }
}
