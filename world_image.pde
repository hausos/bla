public class WorldImage {
  PImage worldMap;  // Declare variable "a" of type PImage
  PShape usa, anglija, australija, avstrija, ceska, finska, fran, kanada, grcija, irska, italija, juznoafriska_republika, nemcija, nizozemska, norveska, nova_zelandija, portugalska, rusija, slovaska, slovenija, spanija, svedska, svica, turcija, ukrajina;
  
  Table hikingTable = loadTable("\\podatki\\hiking_camping.csv", "header");
  Table motorcycleTable = loadTable("\\podatki\\motorcycle_camping.csv", "header");
  Table bikepackingTable = loadTable("\\podatki\\bikepacking.csv", "header");
  Table backpackingTable = loadTable("\\podatki\\backpacking_camping.csv", "header");
  Table travelTable = loadTable("\\podatki\\backpacking_camping.csv", "header");
  Table[] campingTables = new Table[] {hikingTable, motorcycleTable, bikepackingTable, backpackingTable, travelTable};
  TableRow timelineRow;
  int countryColor;


  
  void load_images() {
     worldMap = loadImage("\\slike\\map.png");
     
     anglija = loadShape("\\slike\\ang.svg");
     australija = loadShape("\\slike\\australija.svg");
     avstrija = loadShape("\\slike\\avstrija.svg");
     ceska = loadShape("\\slike\\ceska.svg");
     finska = loadShape("\\slike\\finska.svg");
     fran = loadShape("\\slike\\fran.svg");
     grcija = loadShape("\\slike\\grcija.svg");
     irska = loadShape("\\slike\\irska.svg");
     italija = loadShape("\\slike\\italija.svg");
     juznoafriska_republika = loadShape("\\slike\\juznoafriska-republika.svg");
     kanada = loadShape("\\slike\\kanada.svg");
     nemcija = loadShape("\\slike\\nemcija.svg");
     nizozemska = loadShape("\\slike\\nizozemska.svg");
     norveska = loadShape("\\slike\\norveska.svg");
     nova_zelandija = loadShape("\\slike\\nova_zelandija.svg");
     portugalska = loadShape("\\slike\\portugalska.svg");
     rusija = loadShape("\\slike\\rusija.svg");
     slovaska = loadShape("\\slike\\slovaska.svg");
     slovenija = loadShape("\\slike\\slovenija.svg");
     spanija = loadShape("\\slike\\spanija.svg");
     svedska = loadShape("\\slike\\svedska.svg");
     svica = loadShape("\\slike\\svica.svg");
     turcija = loadShape("\\slike\\turcija.svg");
     ukrajina = loadShape("\\slike\\ukrajina.svg");
     usa = loadShape("\\slike\\US.svg");
     
     anglija.disableStyle();
     australija.disableStyle();
     kanada.disableStyle();
     usa.disableStyle();
     avstrija.disableStyle();
     ceska.disableStyle();
     finska.disableStyle();
     fran.disableStyle();
     grcija.disableStyle();
     irska.disableStyle();
     italija.disableStyle();
     juznoafriska_republika.disableStyle();
     nemcija.disableStyle();
     nizozemska.disableStyle();
     norveska.disableStyle();
     nova_zelandija.disableStyle();
     portugalska.disableStyle();
     rusija.disableStyle();
     slovaska.disableStyle();
     slovenija.disableStyle();
     spanija.disableStyle();
     svedska.disableStyle();
     svica.disableStyle();
     turcija.disableStyle();
     ukrajina.disableStyle();

  }

  void display_image() {
    image(worldMap, 62, 40);
  }
  
  void display_backpacking() {
    for (int i=0; i < 5; i++) {
      if (i+1 == rectPressed) {
         timelineRow = campingTables[i].getRow(time_pos);
      }
    }
       

    countryColor = 255 * timelineRow.getInt("Anglija") /100;
    changeFill(countryColor);
    shape(anglija, 1028.59, 270.36, 67.71, 130.48);
    
    countryColor = 255 * timelineRow.getInt("Avstralija") /100;
    changeFill(countryColor);
    shape(australija, 892, 653, 136, 163);

    countryColor = 255 * timelineRow.getInt("Kanada") /100;
    changeFill(countryColor);
    shape(kanada, 144.35, 149.33, 259.95, 337.9);
    
    countryColor = 255 * timelineRow.getInt("Zdruzene drzave Amerike") /100;
    changeFill(countryColor);
    shape(usa, 63, 318, 300, 248);
    
    /*  */
    countryColor = 255 * timelineRow.getInt("Avstrija") /100;
    changeFill(countryColor);
    shape(avstrija, 1149.3, 412, 51.71, 26);
            
    countryColor = 255 * timelineRow.getInt("Ceska") /100;
    changeFill(countryColor);
    shape(ceska, 1166.54, 389.89, 46.11, 26.36);
            
    countryColor = 255 * timelineRow.getInt("Finska") /100;
    changeFill(countryColor);
    shape(finska, 1225.26, 117.28, 73.62, 167.12);
            
    countryColor = 255 * timelineRow.getInt("Francija") /100;
    changeFill(countryColor);
    shape(fran, 1051.24, 388.96, 98, 96.19);
            
    countryColor = 255 * timelineRow.getInt("Grcija") /100;
    changeFill(countryColor);
    shape(grcija, 1217.94, 481.64, 58.54, 59.42);
                
    countryColor = 255 * timelineRow.getInt("Irska") /100;
    changeFill(countryColor);
    shape(irska, 1013.63, 340.93, 29.67, 44.58);
    
        
    countryColor = 255 * timelineRow.getInt("Italija") /100;
    changeFill(countryColor);
    shape(italija, 1129.66, 431.21, 80.39, 95.2);

    countryColor = 255 * timelineRow.getInt("Nemcija") /100;
    changeFill(countryColor);
    shape(nemcija, 1123.82, 344.57, 62.79, 84.42);
   
    countryColor = 255 * timelineRow.getInt("Nizozemska") /100;
    changeFill(countryColor);
    shape(nizozemska, 1107.07, 361.25, 26.1, 32.02);
    
    countryColor = 255 * timelineRow.getInt("Norveska") /100;
    changeFill(countryColor);
    shape(norveska, 1116.8, 95.3, 178.33, 212.75);
    
    countryColor = 255 * timelineRow.getInt("Nova Zelandija") /100;
    changeFill(countryColor);
    shape(nova_zelandija, 1046.63, 729.01, 52.91, 74.19);
    
    countryColor = 255 * timelineRow.getInt("Portugalska") /100;
    changeFill(countryColor);
    shape(portugalska, 871.06, 478.19, 170.64, 81.41);
    
    countryColor = 255 * timelineRow.getInt("Rusija") /100;
    changeFill(countryColor);
    shape(rusija, 1217, 120.75, 225, 367.07);  
   
    countryColor = 255 * timelineRow.getInt("Slovenija") /100;
    changeFill(countryColor);
    shape(slovenija, 1175.46, 433.36, 21.48, 13.92);
    
    countryColor = 255 * timelineRow.getInt("Spanija") /100;
    changeFill(countryColor);
    shape(spanija, 960.44, 463.35, 153.15, 135.47);
    
    countryColor = 255 * timelineRow.getInt("Svedska") /100;
    changeFill(countryColor);
    shape(svedska, 1160.01, 137.66, 88.7, 203.89);
    
    countryColor = 255 * timelineRow.getInt("Svica") /100;
    changeFill(countryColor);
    shape(svica, 1124.62, 423.94, 30.66, 19.34);
    
    countryColor = 255 * timelineRow.getInt("Turcija") /100;
    changeFill(countryColor);
    shape(turcija, 1259, 478.93, 130.56, 54.37);
    
    countryColor = 255 * timelineRow.getInt("Ukrajina") /100;
    changeFill(countryColor);
    shape(ukrajina, 1235.23, 375.79, 122.93, 81.65);
    /*   */

  }
  
    void  changeFill(int countryColor) {
      if (rectPressed == 1) {
          fill(countryColor, countryColor, 0);
      } else if (rectPressed == 2) {
          fill(0, countryColor, 0);
      } else if (rectPressed == 3) {
          fill(countryColor, 0, 0);
      } else if (rectPressed == 4) {
          fill(0, countryColor, countryColor);
      } else if (rectPressed == 5) {
          fill(countryColor, 0, countryColor);
      }
    }

}
