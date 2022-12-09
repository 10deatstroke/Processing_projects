float[] myArr = new float[100]; //<>//
int head = 0, tail = 99;
int side_margin = 5, top_bottom_margin = 3;

float available_window_size = (100 - side_margin) - top_bottom_margin;
float x_axis_last_point;

float rand_max_limit, rand_min_limit;

void setup() {
  size(1024, 720);
  rand_max_limit = height / 2;
  rand_min_limit = height / top_bottom_margin;
  for(int i = 0; i < 100; i++){
    //myArr[i] = random(rand_min_limit, rand_max_limit);
    myArr[i] = rand_max_limit - i;
  }
}

void draw() {
  background(200);
  XY_plot myplot = new XY_plot(side_margin,top_bottom_margin);
  
  float x_axis_point_interval = width * (available_window_size / 100) / 100;

  myplot.Initialize_axis();
  x_axis_last_point = myplot.get_left_margin();
  
  if(head == 0){
    for(int i = head; i < tail; i++){
      myplot.plot(x_axis_last_point, myArr[i], x_axis_last_point + x_axis_point_interval, myArr[i + 1]);
      x_axis_last_point += x_axis_point_interval;
    }
  }else{
    for(int i = head; i < 99; i++){
      myplot.plot(x_axis_last_point, myArr[i], x_axis_last_point + x_axis_point_interval, myArr[i + 1]);
      x_axis_last_point += x_axis_point_interval;
    }
    for(int i = 0; i < tail; i++){
      myplot.plot(x_axis_last_point, myArr[i], x_axis_last_point + x_axis_point_interval, myArr[i + 1]);
      x_axis_last_point += x_axis_point_interval;
    }
  }
  head++;
  if(head >= 100){
    head = 0;
  }
  tail++;
  if(tail >= 100){
    tail = 0;
  }
  delay(50);


}
