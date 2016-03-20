EquilateralTriangle[] triangles;
TrilateralTrapezoid trap1, trap2, trap3;

color brown = color(175, 100, 75);
color blue = color(144,195,212);
color light_tan = color(212,195,144);

int columns = 7;

void setup() {
  size(700, 700);

  float side_length = 100;

  int count = width/columns;
  triangles = new EquilateralTriangle[count];
  for (int i = 0; i < count; i++){
    triangles[i] = new EquilateralTriangle(i*side_length, 250, side_length);
    print(i);
  }

  trap1 = new TrilateralTrapezoid(100, 300, side_length/3);
  trap2 = new TrilateralTrapezoid(150, 300, (2 * side_length)/3);
  trap3 = new TrilateralTrapezoid(200, 300, side_length);
}

void draw() {
  for (EquilateralTriangle triangle : triangles) {
    triangle.display();
  }
}
