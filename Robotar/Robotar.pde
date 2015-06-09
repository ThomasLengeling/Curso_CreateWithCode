
float posX = 100;
float posY = 100;

//color 0 - 255;
float colorElipseR = 200;
float colorElipseG = 0;
float colorElipseB = 0;

float velocidad = 2.5;

void setup(){
  size(1024, 768);
 
}

void draw(){
  
  //RGB, alpha.
  //tres valors, ultimo opacidad
  fill(255, 255, 255, 5);
  rect(0, 0, width, height);
  
  //width -> tamano en X
  //Height -> tamano en Y
  //rect(0, 0, 400, 400);
  
  //fill(0, 0, 255, 5);
  //rect(500, 0, 400, 400);
  
  fill(colorElipseR, colorElipseG, colorElipseB);
  ellipse(posX, posY, 50, 50);
  
  posX = posX + velocidad;
  
  if(posX > width){
    posX =  0;
    posY =  random(500);
    colorElipseR = random(255);
    colorElipseG = random(255);
    colorElipseB = random(255);
  }
  
  
}
  
  
