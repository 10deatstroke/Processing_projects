float[] myArr = new float[200];
int head = 0, tail = 100;
int side_margin = 5, top_bottom_margin = 3;

float available_window_size = (100 - side_margin) - top_bottom_margin;
float x_axis_last_point;

void setup() {
  size(800, 1000);
  for(int i = 0; i < 200; i++){
    myArr[i] = random(height/2);
  }
}

void draw() {
  background(200);
  XY_plot myplot = new XY_plot(side_margin,top_bottom_margin);
  float x_axis_point_interval = width * (available_window_size / 100) / 100;
  myplot.Initialize_axis(); //<>//
  x_axis_last_point = myplot.get_left_margin();
  for(int i = head; i < tail; i++){
    myplot.plot(x_axis_last_point, myArr[i], x_axis_last_point + x_axis_point_interval, myArr[i + 1]);
    x_axis_last_point += x_axis_point_interval;
  }
  head++;
  tail++;
  if(head >= 200){
    head = 0;
  }
  if(tail >= 200){
    tail = 0;
  }
  delay(20);


}
