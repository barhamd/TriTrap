import processing.pdf.*;
EquilateralTriangle triangle;
TrilateralTrapezoid trapezoid;

int columns = 16;
float side_length = 100;

void setup() {
  /*size(700, 1400);*/
  size(700, 2800, PDF, "long.pdf");
  background(255);

  int count = width/columns;
  triangle = new EquilateralTriangle(0, 0, side_length);
  trapezoid = new TrilateralTrapezoid(0, 0, side_length/3);

  for(int y = 1; y < 36; y++){
    for(int x = 0; x < count; x++){
      pushMatrix();
      translate(x*side_length, y*triangle.height());
      if (y % 2 == 0) {
        translate(-side_length/2, 0);
      }
      draw_tritrap();
      rotate(PI);
      translate(side_length/2, triangle.height());
      draw_tritrap();
      popMatrix();
    }
  }
}

void draw_tritrap(){
  stroke(255);
  fill(0);
  triangle.display();
  noStroke();
  fill(255);
  draw_trapezoids();
}
void draw_trapezoids(){
  draw_trap_1();
  draw_trap_2();
  draw_trap_3();
  trapezoid.l = trapezoid.l - .01;
}

void draw_trap_1(){
  pushMatrix();
  translate(side_length/3, 0);
  trapezoid.display();
  popMatrix();
}

void draw_trap_2(){
  pushMatrix();
  translate(side_length, 0);
  rotate(radians(-120));
  translate(side_length/3, 0);
  trapezoid.display();
  popMatrix();
}

void draw_trap_3(){
  pushMatrix();
  rotate(radians(120));
  translate(-side_length, 0);
  translate(side_length/3, 0);
  trapezoid.display();
  popMatrix();
}
