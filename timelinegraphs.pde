public class Timeline {
  int x = 57;
  int lenrows;
  color timelineColor = color(205, 3, 3);
  Table table = loadTable("\\podatki\\ves_svet.csv", "header");
  TableRow row;

  void print_timeline() {
    //draws timeline times
    textSize(15);
    fill(255, 255, 255);
    
    int numi = 0;
    lenrows = table.getRowCount();
    for (TableRow row : table.rows()) {
      println(row.getString("Mesec") + " : "+ row.getString("hiking camping") );
      if (numi % 12 == 0) {
        text(row.getString("Mesec"), 1210/lenrows * numi/12*13+37, 987); 
      }
      numi++;
    }
  }
  
  void draw_timeline() {
    //draws a timeline line
    //reset
    fill(53);
    rect(0, 915, 1200, 50); 
    //whole timeline
    fill(0);
    rect(57, 932, 1098, 17, 10);
    // highlighted timeline
    if (rectPressed == 1) {
          fill(180, 180, 0);
      } else if (rectPressed == 2) {
          fill(0, 220, 0);
      } else if (rectPressed == 3) {
          fill(220, 0, 0);
      } else if (rectPressed == 4) {
          fill(0, 220, 220);
      } else if (rectPressed == 5) {
          fill(220, 0, 220);
      }
    rect(57, 932, x-57, 17, 10);
    // circular timeline button
    ellipse(x, 940, 46, 46);
  }
  

  void get_mouse_movement() {
    x = mouseX;
    if (x < 57) {
      x = 57;
    }
    else if (x > 1155) {
      x = 1155;
    }
  }
  
  void draw_graphs() {
    // calculating mouse position
    time_pos = (x - 57) * (lenrows-1)/1098;
    
    //clear graphs
    fill(53);
    rect(1228, 636, 636, 327);
    
    //get row from table
    row = table.getRow(time_pos);
    textSize(15);
    
    //text
    fill(255, 255, 255);
    text("hiking\ncamping", 1247, 994);
    text("motorcycle\ncamping", 1375, 975); 
    text("bikepacking", 1506, 1022); 
    text("backpacking\ncamping", 1636, 975); 
    text("travel\ncamping", 1767, 999); 

    //graphs    
    fill(255, 255, 0);
    rect(1246, 948 - row.getInt("hiking camping") * 3, 80, row.getInt("hiking camping") * 3, 10); 

    fill(0, 255, 0);
    rect(1376, 948 - row.getInt("motorcycle camping") * 3, 80, row.getInt("motorcycle camping") * 3, 10); 

    fill(255, 0, 0);
    rect(1506, 948 - row.getInt("bikepacking") * 3, 80, row.getInt("bikepacking") * 3, 10); 

    fill(0, 255, 255);
    rect(1636, 948 - row.getInt("backpacking camping") * 3, 80, row.getInt("backpacking camping") * 3, 10); 

    fill(255, 0, 255);
    rect(1766, 948 - row.getInt("travel camping") * 3, 80, row.getInt("travel camping") * 3, 10); 
  }

}
