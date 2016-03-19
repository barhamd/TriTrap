class TrilateralTrapezoid {

  float l; // Length of 'top' 3 sides
  float x; // x coordinate
  float y; // y coordinate

  TrilateralTrapezoid(float xpos, float ypos, float side_length) {
    l = side_length;
    x = xpos;
    y = ypos;
  }

  float vertice2_x() {
    return x + (2 * l);
  }

  float vertice2_y() {
    return y;
  }

  float vertice3_x() {
    return x + (1.5 * l);
  }

  float vertice3_y() {
    return y-height();
  }

  float vertice4_x() {
    return x + (l/2);
  }

  float vertice4_y() {
    return y-height();
  }

  float height() {
    return sqrt(pow(l, 2) - pow(l/2, 2));
  }

  void display() {
    quad(x, y, vertice2_x(), vertice2_y(), vertice3_x(), vertice3_y(), vertice4_x(), vertice4_y());
  }
}