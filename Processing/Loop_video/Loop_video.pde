/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  
  // Load and play the video in a loop
  movie = new Movie(this, "transit.mov");
  movie.loop();
}

//lee la pelicula en si
void movieEvent(Movie m) {
  m.read();
}

void draw() {
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  
  tint(mouseX, 0, 0, 50);
  image(movie, 0, 0, width, height);
  
  fill(255, 0, 0);
  ellipse(width/2, height/2, 50, 50);
  
  if( dist(width/2.0, height/2.0, mouseX, mouseY) < 50){
    movie.pause();
  }
  
}


void keyPressed(){
  if(key == 's'){
    movie.pause();
  }
  if(key == 'p'){
    movie.play();
  }
  
}
  
  
  
