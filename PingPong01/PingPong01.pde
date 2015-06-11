//Circulo

//posicion de la bola
float bolaPosX = 300;
float bolaPosY = 300;

//velocidad Bola
float bolaVelX = 2;
float bolaVelY = 5;

//tamanos 
float bolaTam  = 50;

//Rectangulo

//posicion del rectangulo
float rectPosX = 300;
float rectPosY = 50;

//tamano del rectangulo
float rectWidth = 100;
float rectHeight = 20;

void setup() {
  size(500, 500);
}


void draw() {
  //Fondo blanco
  background(255);

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  noStroke();
  fill(0);
  ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);


  //Dibujar el Rectangulo
  //posicion esquina superior izquierda (rectPosX, rectPosY)
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;


  //si reboto cambiar la velocidad
  if (rebote() == true) {
    bolaVelX  = -bolaVelX;
    bolaVelY  = -bolaVelY;
  }

  //Rebotar con las paredes
  if (bolaPosX > width){
    bolaVelX  = -bolaVelX;
  }

  if (bolaPosY > height){
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosY < 0){
    bolaVelY  = -bolaVelY;
  }
  
  if (bolaPosX < 0){
    bolaVelX  = -bolaVelX;
  }
}

