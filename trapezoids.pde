EquilateralTriangle[] triangles;
TrilateralTrapezoid[] trapezoids;

color brown = color(175, 100, 75);
color blue = color(144,195,212);
color light_tan = color(212,195,144);

int columns = 7;
float side_length = 100;

void setup() {
  size(700, 700);

  int count = width/columns;
  triangles = new EquilateralTriangle[count];
  trapezoids = new TrilateralTrapezoid[count];
  for (int i = 0; i < count; i++){
    triangles[i] = new EquilateralTriangle(i*side_length, 250, side_length);
    trapezoids[i] = new TrilateralTrapezoid(i*side_length + (side_length/3), 250, side_length/3);
  }

  for (EquilateralTriangle triangle : triangles) {
    triangle.display();
  }
  for (TrilateralTrapezoid trapezoid : trapezoids) {
    trapezoid.display();
  }
}
