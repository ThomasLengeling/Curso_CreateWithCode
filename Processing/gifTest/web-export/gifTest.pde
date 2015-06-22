
PImage img [];
int    indiceImagen = 0;

void setup() {
  size(500, 500);

  img = new PImage[45];

  for (int i = 0; i < 45; i++) {
    println(i);
    if (i < 10) {
      img[i] = loadImage("frame_00"+i+".gif");
    } else {
      img[i] = loadImage("frame_0"+i+".gif");
    }
  }
  
  //frameRate(10);
}


void draw() {
  background(0);
  
  image(img[indiceImagen],  0, 0);
  
  if(frameCount % (mouseX +1) == 0)
    indiceImagen = indiceImagen + 1;
  
  if(indiceImagen > 45 - 1){
   indiceImagen = 0; 
  }
  
  
}


