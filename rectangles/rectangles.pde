color colors[] = {#CC36EA, #73DB8A, #6EB6FC, #FFFB74, #5C69EA};
int randColor = floor(random(colors.length));

void setup() {
  size(800,800);
  background(0);
}

void draw() {
  // Rect 1
  fill(colors[randColor]);
  rect(0 + 10, 0 + 10, width - width/4 - 10, height/2);
  
  // Rect 2
  fill(colors[(randColor + 1) % colors.length]);
  rect(width - width/4 + 10 , 0 + 10, width/4 - 20, height - 20);
  
  // Rect 3
  fill(colors[(randColor + 2) % colors.length]);
  rect(0 + 10, height - height/3 - 10, height - height/4 - 10, width/3);
  
  // Rect 4
  fill(colors[(randColor + 3) % colors.length]);
  rect(0 + 10, height - height/2 + 20, height - height/5 - 50, width/4 - 105);
  
  save("sketch.jpg");
  
}
