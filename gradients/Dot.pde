class Dot {
  float x, y;
  float rad = 10;
  color fill = #F6FF00;
  
  public Dot(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void draw() {
     fill(this.fill);
     ellipse(this.x, this.y, this.rad, this.rad);
  }
}
