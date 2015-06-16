

void setup() {
  size(500, 500);
}


void draw() {
  //negro
  background(0);

  ///horizontales cambia en Y
  for (int i = 0; i < 21; i= i +1) {
    stroke(255); // ->blanco
    //primero (x,y) final (x, y)
    //inicial (x1, y1), final (x2, y2)
    line(mouseX, 50 + 10*i, 250, mouseY + 10*i);
  }

  //verticales cambia en X
  for (int i = 0; i < 21; i= i +1) {
    stroke(255); // ->blanco
    line(50 + 10*i, 50, 50 + 10*i, 250);
  }
  
}

