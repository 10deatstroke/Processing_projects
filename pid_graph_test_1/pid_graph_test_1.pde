float[] myArr = new float[200];
int head = 0, tail = 100;
int side_margin = 5, top_bottom_margin = 3;

float available_window_size = (100 - side_margin) - top_bottom_margin;

void setup() {
  size(800, 1000);
  for(int i = 0; i < 200; i++){
    myArr[i] = random(height/2, height / 0.75);
  }
}

void draw() {
  XY_plot myplot = new XY_plot(side_margin,top_bottom_margin);
  myplot.Initialize_axis();

  for(int i = head; i < tail; i++){
    myplot.plot(,,,)
  }
  delay(20);


}
