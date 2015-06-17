ArrayList<ParticleSystem> systems;


void crearParticulas(){
  systems = new ArrayList<ParticleSystem>();  
}

void dibujarParticulas(color col){
  
  for (ParticleSystem ps: systems) {
    ps.run(col);
    ps.addParticle();
  } 
}
void anadirParticulas(float posx, float posy){
  systems.add(new ParticleSystem(1, new PVector(posx, posy)));
}
