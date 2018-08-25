// Truchet Tiles v010
// 26 August 2018
// rupert russell
// artwork available on redbubble at: https://www.redbubble.com/people/rupertrussell/collections/955679-truchet-tiles
// https://www.openprocessing.org/sketch/582821


int tileSize = 40;
int canvasSize = 7700;
float tileType = 0;
float a, b, c, d, start, stop;
boolean first = true;


void setup() {
  background(255);
  size(7700, 7700); 
  noFill();
  strokeWeight(7);
  stroke(255, 0, 0);
}

void draw() {
  if (first == true) {
    truchet();
    first = false;
  }
}

void mouseClicked() {
  truchet();
}
void truchet() {
  background(0);
  fill(255,0,0);
  for (int i = 0; i < canvasSize; i = i + tileSize) {
    for (int j = 0; j < canvasSize; j = j + tileSize) {  


      tileType = random(0, 1);
      if (tileType > 0.5) {

        // type 1
        a = i;
        b = j;
        c = tileSize;
        d = tileSize;
        start = radians(0);
        stop  = radians(90);
        arc(a, b, c, d, start, stop);

        a = i + tileSize;
        b = j + tileSize;
        start = radians(180);
        stop  = radians(270);
        arc(a, b, c, d, start, stop);
      } else {

        // type 2
        a = i + tileSize;
        b = j;
        c = tileSize;
        d = tileSize;
        start = radians(90);
        stop  = radians(180);
        arc(a, b, c, d, start, stop);

        a = i ;
        b = j + tileSize;
        start = radians(270);
        stop  = radians(360);
        arc(a, b, c, d, start, stop);
      }
    }
  }
  save("Truchet010.png");
  exit();
}
