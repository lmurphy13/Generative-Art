float randX;
float randY;


void setup() {
  size(800, 800);
  background(0);
  randX = random(width);
  randY = random(height);

}



void draw() {
  float side = 600;
  color rFill = #48ED8B;
  color cFill = #8876FF;
 

  drawRect(side, rFill);
  
  drawCircle(randX, randY, 200, cFill);
 


}

float drawRect(float side, color fill) {
  if (side < 0) {
    return 0;
  } else {
    fill(fill);
    rect(0,0, side, side);
    return drawRect(side-50, fill-30);
  }
}

float drawCircle(float x, float y, float radius, color fill) {
  if (radius < 0) {
     return 0; 
  } else {
    fill(fill);
    ellipse(x, y, radius, radius);
    return drawCircle(x - sin(x), y - sin(y), radius - 2, fill - 4);
  }
}
