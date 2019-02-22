import processing.video.*;

Capture video;

int pixelSize = 20;

void setup() {
  size(1280, 720);
  video = new Capture(this, width, height, 30);
  video.start();
}

void draw() {
  if( video.available()) {
    video.read();
  }

  for(int x=0; x<width; x+=pixelSize) {
    for(int y=0; y<height; y+=pixelSize) {
      int loc = x+y*width;

      color c = video.pixels[loc];

      fill(c);
      noStroke();
      rect(x, y, pixelSize, pixelSize);
    }
  }
}
