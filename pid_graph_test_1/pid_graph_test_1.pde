int window_width = 1280; //<>//
int window_height = 720;

int[] a = new int[1000];
int head = 0, tail = 0;
int count = 1;

float y_axis_start_point = window_height * 0.95;
float y_axis_end_point = window_height * 0.05;
float x_axis_start_point = window_width * 0.05;
float x_axis_end_point = window_width * 0.95;
float x_axis_last_point = x_axis_start_point;
float y_axis_last_point = y_axis_start_point;


void setup() {
  size(1280, 720);
  for (int i = 0; i < 1000; i++) {
    a[i] = (int)random(y_axis_start_point, y_axis_end_point / 2);
  }
  y_axis_last_point = a[0];
}

void draw() {

  //y_axis_last_point + a[count];

  background(200); //<>//
  line(x_axis_start_point, y_axis_start_point, x_axis_start_point, y_axis_end_point);
  line(x_axis_start_point, y_axis_start_point, x_axis_end_point, y_axis_start_point);
  for (int i = count; i < count + 100; i++) {
    circle(x_axis_last_point, y_axis_start_point - a[i - 1], 5);
    line(x_axis_last_point, y_axis_last_point, x_axis_last_point + (window_width * 0.009), a[i]);
    x_axis_last_point += (window_width * 0.009);
    y_axis_last_point = a[i];
  }
  count++;
  if (count > 900) {
    count = 1; //<>//
  }
  x_axis_last_point = x_axis_start_point;
  y_axis_last_point = y_axis_start_point;
  
  delay(20);


}
