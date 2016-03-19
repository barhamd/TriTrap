class EquilateralTriangle {

  int l; // Length of each side
  float x; // x coordinate
  float y; // y coordinate

  EquilateralTriangle(float xpos, float ypos, int side_length) {
    l = side_length;
    x = xpos;
    y = ypos;
  }

  float vertice2_x() {
    return x + l;
  }

  float vertice2_y() {
    return y;
  }

  float vertice3_x() {
    return x + (l/2);
  }

  float vertice3_y() {
    return y-height();
  }

  float height() {
    return sqrt(pow(l, 2) - pow(l/2, 2));
  }

  void display() {
    triangle(x, y, vertice2_x(), vertice2_y(), vertice3_x(), vertice3_y());
  }
}