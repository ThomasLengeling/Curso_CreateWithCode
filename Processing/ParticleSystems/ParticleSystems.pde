
void setup() {
  size(640, 360);
  crearParticulas();
}

void draw() {
  background(0);
  color col = color(0, 200, 255);
  dibujarParticulas(col);
  
}

void mousePressed() {
  anadirParticulas(mouseX, mouseY);
}
