PImage imagenMia;
float posicionX = 0;

void setup() {
  size(500, 500);
  //imagen en el folder de tu sketch
  //Cargar/load imagen con el
  //nombre de tu imagen en comillas
  imagenMia = loadImage("particle.png");
}
void draw() {
  background(255);
  //dibujar imagen en la posicion (x, y)
  //dibujar imagen en en (0, 0)
  //Imagen nombre de tu imagen.
  tint( 255, 255, 0);
  //ultimos dos valores tamano de la imagen
  image(imagenMia, posicionX, 0, 10, 10);

  posicionX = posicionX + 1;
}


