PImage imagenMia;
float posicionX = 0;

void setup(){
  size(500, 500);
  
  //Cargar/load imagen con el
  //nombre de tu imagen en comillas
  imagenMia = loadImage("particle.png");
}

void draw(){
  background(255);
  
  //dibujar imagen en la posicion (x, y)
  //dibujar imagen en en (0, 0)
  //Imagen nombre de tu imagen.
  
  tint( 255, 255, 0);
  image(imagenMia, posicionX, 0, 100, 100);
  
  posicionX = posicionX + 1;
}
  
  

