EquilateralTriangle triangle;
TrilateralTrapezoid trapezoid;

int columns = 7;
float side_length = 100;

void setup() {
  size(700, 700);

  int count = width/columns;
  triangle = new EquilateralTriangle(0, 0, side_length);
  trapezoid = new TrilateralTrapezoid(0, 0, side_length/3);

  for(int y = 1; y < 9; y++){
    for(int x = 0; x < count; x++){
      pushMatrix();
      translate(x*side_length, y*triangle.height());
      triangle.display();
      draw_trapezoids();
      popMatrix();
    }
  }
}
void draw_trapezoids(){
  pushMatrix();
  translate(side_length/3, 0);
  trapezoid.display();
  popMatrix();
}
