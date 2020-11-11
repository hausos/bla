public class Buttons {
  int buttonPositionX = 1555;
  int[] buttonPositionY = new int[]{ 101, 188, 274, 361, 448}; 
  int buttonSizeX = 310;     // Diameter of rect
  int buttonSizeY = 71;
  int buttonSizeRadius = 16;
  color rectColor, circleColor, backgroundColor, rectPressedColor, rectHighlight, circleHighlight, currentColor;
  int rectOver = 0;
    
  
  void setupButtonColors() {
    noStroke();
    rectColor = color(0);
    rectHighlight = color(67, 67, 67);
    rectPressedColor = color(205, 3, 3);
    circleColor = color(255);
    circleHighlight = color(204);
    backgroundColor = color(0);
    currentColor = backgroundColor;
  }
  
  
  void drawUpdatedButtons() {
    
    updateRectOver();
    //background(currentColor);
    fill(rectColor);
    rect(1538, 75, 342, 470, buttonSizeRadius);
  
    
    // button 1
    for (int i=0; i < 5; i++) {
       if (rectPressed == i+1 ) {
          fill(chosenColor[i]);
        } else {
            if (rectOver == i+1) {
              fill(rectHighlight);
            } else {
              fill(rectColor);
            }
        }
        rect(buttonPositionX, buttonPositionY[i], buttonSizeX, buttonSizeY, buttonSizeRadius);
    }
    
      textSize(25);
      fill(255, 250, 255);
      text("hiking camping", 1620, 147);
      text("motorcycle camping", 1590, 233);
      text("bikepacking", 1638, 320);
      text("backpacking camping", 1583, 407);
      text("travel camping", 1623, 493);
    
  }
  
  
  
  
  void updateRectOver() {
           if ( overRect(buttonPositionX, buttonPositionY[0], buttonSizeX, buttonSizeY) ) {
      rectOver = 1;
    } else if ( overRect(buttonPositionX, buttonPositionY[1], buttonSizeX, buttonSizeY) ) {
      rectOver = 2;
    } else if ( overRect(buttonPositionX, buttonPositionY[2], buttonSizeX, buttonSizeY) ) {
      rectOver = 3;
    } else if ( overRect(buttonPositionX, buttonPositionY[3], buttonSizeX, buttonSizeY) ) {
      rectOver = 4;
    } else if ( overRect(buttonPositionX, buttonPositionY[4], buttonSizeX, buttonSizeY) ) {
      rectOver = 5;
    } else {
      rectOver = 0;
    }
  }
  
    
  void lookIfMouseIsOnButton() {
    if (rectOver > 0) {
      rectPressed = rectOver;
    }
  }
  
  
  boolean overRect(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }

}
