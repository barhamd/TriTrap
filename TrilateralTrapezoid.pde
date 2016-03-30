class TrilateralTrapezoid {

  float l; // Length of 'top' 3 sides
  float x; // x coordinate of center
  float y; // y coordinate of center

  TrilateralTrapezoid(float xpos, float ypos, float side_length) {
    l = side_length;
    x = xpos;
    y = ypos;
  }

  float vertice1_x() {
    return x - l;
  }

  float vertice1_y() {
    return y;
  }

  float vertice2_x() {
    return x + l;
  }

  float vertice2_y() {
    return y;
  }

  float vertice3_x() {
    return x + (0.5 * l);
  }

  float vertice3_y() {
    return y-height();
  }

  float vertice4_x() {
    return x - (l/2);
  }

  float vertice4_y() {
    return y-height();
  }

  float height() {
    return sqrt(pow(l, 2) - pow(l/2, 2));
  }

  void display() {
    quad(vertice1_x(), vertice1_y(), vertice2_x(), vertice2_y(), vertice3_x(), vertice3_y(), vertice4_x(), vertice4_y());
  }
}
