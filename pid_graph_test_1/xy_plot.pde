class XY_plot {
  float left_margin, right_margin, top_margin, bottom_margin, x_origin, y_origin;
  XY_plot(float side_margin, float up_down_margin) {
    left_margin = width * (side_margin / 100);
    right_margin = width * (1 - side_margin / 100);
    top_margin = height * (up_down_margin / 100);
    bottom_margin = height * (1 - up_down_margin / 100);
    x_origin = left_margin;
    y_origin = bottom_margin;
    fill(0);
    circle(x_origin, y_origin, 3);
  }

  float get_left_margin() {
    return left_margin;
  }
  float get_right_margin() {
    return right_margin;
  }
  float get_top_margin() {
    return top_margin;
  }
  float get_bottom_margin() {
    return bottom_margin;
  }

  void Initialize_axis() {
    //  Initializing X - axis
    line(x_origin, y_origin, right_margin, y_origin);
    //  Initializing Y - axis
    line(x_origin, y_origin, x_origin, top_margin);
  }

  void plot(float x1_point, float y1_point, float x2_point, float y2_point) {
    //if (x1_point <= left_margin) {
    //  x1_point = left_margin;
    //}
    //if (x2_point >= right_margin) {
    //  x2_point = right_margin;
    //}
    //if (y1_point <= top_margin) {
    //  y1_point = top_margin;
    //}
    //if (y2_point >= bottom_margin) {
    //  y2_point = bottom_margin;
    //}
    line(x1_point, y1_point, x2_point, y2_point);
    fill(255);
    circle(x2_point, y2_point, 5);
  }
}
