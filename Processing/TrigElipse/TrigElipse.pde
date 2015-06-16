float teta = 50;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  //-1, 1 rango de valor 
  // (-50, 50)
  
  float valor = cos(teta)*mouseX;
  fill(valor, 0, 0);
  ellipse(width/2, height/2, valor, valor);

  teta = teta + 0.01;
}

