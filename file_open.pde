Timeline newTimeline;
WorldImage newWorld;
Buttons newButton;
int time_pos;
color[] chosenColor = new color[] {color(180, 180, 0), color(0, 200, 0), color(205, 3, 3), color(0, 180, 180), color(200, 0, 200)};
int rectPressed = 1;


void setup() {
  
  frameRate(30);
  size(1920, 1080);
  background(54);
  noStroke();
  //draw world
  newWorld = new WorldImage();
  newWorld.load_images();
  newWorld.display_image();
  
  //draw USA
  newWorld.display_backpacking();
  
  
  //draw timeline
  newTimeline = new Timeline();
  newTimeline.print_timeline();
  
  newTimeline.draw_timeline();
  
  //button bar
  newButton = new Buttons();
  newButton.setupButtonColors();
}

void draw() {
  newButton.drawUpdatedButtons();
}

void mousePressed() {
  newButton.lookIfMouseIsOnButton();
  
  newTimeline.draw_timeline();
  newWorld.display_backpacking();

}


void mouseDragged() {
  newTimeline.draw_timeline();
  newTimeline.get_mouse_movement();
  newTimeline.draw_graphs();
  
  newButton.lookIfMouseIsOnButton();
  
  newWorld.display_backpacking();

}
