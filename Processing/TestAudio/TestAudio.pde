import ddf.minim.*;

Minim minim;
AudioPlayer player;


void setup() {
  size(512, 200, P3D);
  minim = new Minim(this);
  player = minim.loadFile("marcus_kellis_theme.mp3");
}


void draw() {
  
  
}

