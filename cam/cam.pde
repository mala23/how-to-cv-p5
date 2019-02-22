import processing.video.*;

Capture video;

void setup() {
  size(1280, 720);
  video = new Capture(this, width, height, 30);
  video.start();
}

void draw() {
  if( video.available()) {
    video.read();
  }
  image(video, 0, 0);
}
