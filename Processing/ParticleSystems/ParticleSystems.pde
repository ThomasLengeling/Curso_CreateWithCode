
void setup() {
  size(640, 360);
  crearParticulas();
}

void draw() {
  background(0);
  color col = color(0, 200, 255);
  dibujarParticulas(col);

  if (systems.size() > 10)
    systems.remove(0);
}

void mousePressed() {
  anadirParticulas(mouseX, mouseY);
}

