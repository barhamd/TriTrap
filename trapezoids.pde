EquilateralTriangle triangle;
TrilateralTrapezoid trapezoid;

int columns = 7;
float side_length = 100;

void setup() {
  size(700, 700);
  background(255);
  noStroke();

  int count = width/columns;
  triangle = new EquilateralTriangle(0, 0, side_length);
  trapezoid = new TrilateralTrapezoid(0, 0, side_length/3);

  for(int y = 1; y < 9; y++){
    for(int x = 0; x < count; x++){
      pushMatrix();
      translate(x*side_length, y*triangle.height());
      fill(255);
      triangle.display();
      draw_trapezoids();
      popMatrix();
    }
  }
}
void draw_trapezoids(){
  trapezoid.l = trapezoid.l - .01;
  fill(0);
  draw_trap_1();
  draw_trap_2();
  draw_trap_3();
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
