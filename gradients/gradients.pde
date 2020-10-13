Dot dots[] = new Dot[100];

void setup() {
  size(800,800);
  background(0);
}

void draw() {
  color fill = #15AD74;
  color fill1 = #D3464B;

//  drawBox1(0,0,height,fill1);

//  drawBox2(0,0,height,fill1);
}

float drawBox1(float x, float y, float len, color fill) {
  if (len < 0) {
    return 0;
  } else {
    fill(fill);
    noStroke();
    rect(x,y,len,len);
    return drawBox1(x + 10, y, len - 10, (fill - 10));
  }
}

float drawBox2(float x, float y, float len, color fill) {
  if (len < 0) {
    return 0;
  } else {
    fill(fill);
    noStroke();
    rect(x,y,len,len);
    return drawBox2(x + 10, y, len - 4, (fill - 20));
  }
}

void setupDots() {
  float x = random(width);
  float y = random(500.0,800.0);
  
   for (int i = 0; i < dots.length; i++) {
     dots[i] = new Dot(x,y);
   }
}
