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

int numRebotes = 0;

void setup() {
  size(500, 500);
}


void draw() {
  //Fondo blanco
  rectMode(CORNER);
  fill(255, 255, 255, 10);
  rect(0, 0, width, height);
  
  //background(255);

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  noStroke();
  fill(0); //negro 
  ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);


  //Dibujar el Rectangulo
  //Posicion esquina superior izquierda (rectPosX, rectPosY)
  rectPosX = mouseX;
  rectPosY = mouseY;
  rectMode(CENTER);
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //Actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;

  //Si reboto cambiar la velocidad
  if (rebote() == true) {
    bolaVelX  = -bolaVelX;
    bolaVelY  = -bolaVelY;
    
    numRebotes = numRebotes + 1;
  }
 
   //Dibuar texto
  textSize(20);
  text(numRebotes, 100, 50);
  
  if(numRebotes == 5)
    text("Game Over" , 250, 50);
    
  
  

  //Rebotar con las paredes
  if (bolaPosX > width) {
    bolaVelX  = -bolaVelX;
  }

  if (bolaPosY > height) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosY < 0) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosX < 0) {
    bolaVelX  = -bolaVelX;
  }
  
}

