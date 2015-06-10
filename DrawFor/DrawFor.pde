
void setup() {
  size(900, 900);
}


void draw() {
  background(0);
  //primero inicial
  //segundo donde termina
  //tercero como aumentar
  for (int i = 0; i < 30; i = i + 1) {
    //fill(100 + i*10);
    //line(inicialX, inicialY, finalX, finalY);
    
    stroke(255);
    //line(inicialX, inicialY, finalX, finalY);
    line(100 + i*10, mouseX, mouseY, 100 + i*10);
    
    //posicion(x, y), tamano(tamano, tamano)
    //ellipse(100 + i*60, 100, 50, 50); //Cambia X
    //ellipse(100, 100 + i*60, 50, 50); //Cambia Y
  }
  
}

