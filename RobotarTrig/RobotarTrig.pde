
float posX = 100;
float posY = 100;

//color 0 - 255;
float colorElipseR = 200;
float colorElipseG = 0;
float colorElipseB = 0;

float velocidadX = 2.5;
float velocidadY = 5.0;

float theta = 0;

void setup() {
  size(1024, 768);
}

void draw() {

  //RGB, alpha.
  //tres valors, ultimo opacidad
  fill(255, 255, 255, 0);
  rect(0, 0, width, height);

  //width -> tamano en X
  //Height -> tamano en Y
  //rect(0, 0, 400, 400);

  //fill(0, 0, 255, 5);
  //rect(500, 0, 400, 400);
  
  //color valor con funciones trigonometricas 
  float valor = cos(theta)*100;
  theta = theta  + 0.01;

 // fill(colorElipseR, colorElipseG, colorElipseB);
  noStroke();
  fill(0, valor*1.5, valor, 150);
  ellipse(posX, posY, 50, 50);

  //Solamente en X
  //Cambio de posiciones X, Y
  posX = posX + velocidadX;
  posY = posY + velocidadY;
  
  

  if (posX > width) {

  
    velocidadX = -velocidadX;   //velocidad = -1* velocidad;
    colorElipseR = random(255);
    colorElipseG = random(255);
    colorElipseB = random(255);
  }
  //limite posicion en 0
  if (posX < 0) {
    velocidadX = -velocidadX;   //velocidad = -1* velocidad;
  }

  //limite de toda la pantalla 
  if (posY > height) {
    velocidadY = -velocidadY;   //velocidad = -1* velocidad;
  }

  //limite de la pantalla
  if ( posY < 0) {
    velocidadY = -velocidadY;   //velocidad = -1* velocidad;
  }
}

//evento para precionar teclas
void keyPressed(){
  //barra de spacio 
  if(key == ' '){
    background(255);
  }
  
  if(key == 'a'){
    //guardar muchas imagenes al precionar la tecla a
    save("imagen"+frameCount+".png");
  }
  
  
  
}



