EquilateralTriangle t1, t2, t3, t4;

void setup() {
  size(500, 500);
  t1 = new EquilateralTriangle(50, 300, 100);
  t2 = new EquilateralTriangle(100, 300, 150);
  t3 = new EquilateralTriangle(150, 300, 200);
  t4 = new EquilateralTriangle(200, 300, 250);
}

void draw() {
  fill(175, 100, 75);
  t4.display();
  fill(144,195,212);
  t3.display();
  fill(212,195,144);
  t2.display();
  fill(150,0,150);
  t1.display();
}