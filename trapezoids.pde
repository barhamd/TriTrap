EquilateralTriangle tri1, tri2, tri3, tri4;
TrilateralTrapezoid trap1, trap2, trap3;

color brown = color(175, 100, 75);
color blue = color(144,195,212);
color light_tan = color(212,195,144);

void setup() {
  size(500, 500);

  float side_length = 100;

  tri1 = new EquilateralTriangle(100, 300, side_length);
  tri2 = new EquilateralTriangle(150, 300, side_length * 2);
  tri3 = new EquilateralTriangle(200, 300, side_length * 3);

  trap1 = new TrilateralTrapezoid(100, 300, side_length/3);
  trap2 = new TrilateralTrapezoid(150, 300, (2 * side_length)/3);
  trap3 = new TrilateralTrapezoid(200, 300, side_length);
}

void draw() {
  fill(brown);
  tri3.display();

  fill(blue);
  trap3.display();

  fill(blue);
  tri2.display();

  fill(light_tan);
  trap2.display();

  fill(light_tan);
  tri1.display();

  fill(brown);
  trap1.display();
}
