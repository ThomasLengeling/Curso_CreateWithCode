
// inicia valores
// como la ventana
void setup()
{   
  size(500, 500);
}

//dibujar
void draw()
{
   background(255, 255, 255);

   fill(0, 100, 255);
   stroke(255, 255, 255);
   
   //Elipse Centro position en (x, y)
   ellipse(250, 250, 50, 100);
   
   //rectangulo en esquina superior izquierdo
   //(200, 200)
   rect(200, 200, 50, 100);
   
   stroke(0, 0, 0); //contorno
   
   //linea en (x1, y1) (x2, y2)
   line(200, 200, 100, 500);
   
   //triangulo tres puntos para cada uno
   triangle(100, 100, 50, 50, 175, 75);
   
   fill(255, 255, 255, 255);
   rect(300, 100, 50, 50);
   
   fill(0, 255, 0);
   noStroke();
   rect(300, 250, 50, 50);
}
