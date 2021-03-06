
void setup() {
  size(640, 360);
  crearParticulas();
}

void draw() {
  background(0);
  color col = color(0, 200, 255);
  dibujarParticulas(col);

  if (systems.size() > 10)
    systems.remove(0);
}

void mousePressed() {
  anadirParticulas(mouseX, mouseY);
}

// A subclass of Particle

class CrazyParticle extends Particle {

  // Just adding one new variable to a CrazyParticle
  // It inherits all other fields from "Particle", and we don't have to retype them!
  float theta;

  // The CrazyParticle constructor can call the parent class (super class) constructor
  CrazyParticle(PVector l) {
    // "super" means do everything from the constructor in Particle
    super(l);
    // One more line of code to deal with the new variable, theta
    theta = 0.0;
  }

  // Notice we don't have the method run() here; it is inherited from Particle

  // This update() method overrides the parent class update() method
  void update() {
    super.update();
    // Increment rotation based on horizontal velocity
    float theta_vel = (velocity.x * velocity.mag()) / 10.0f;
    theta += theta_vel;
  }

  // This display() method overrides the parent class display() method
  void display(color col) {
    // Render the ellipse just like in a regular particle
    super.display(col);
    // Then add a rotating line
    pushMatrix();
    translate(location.x,location.y);
    rotate(theta);
    stroke(col, lifespan);
    line(0,0,25,0);
    popMatrix();
  }

}
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
// A simple Particle class

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    lifespan = 255.0;
  }

  void run(color col) {
    update();
    display(col);
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  // Method to display
  void display(color col) {
    stroke(col, lifespan);
    fill(col, lifespan);
    ellipse(location.x,location.y,8,8);
  }

  // Is the particle still useful?
  boolean isDead() {
    return (lifespan < 0.0);
  }

}
// An ArrayList is used to manage the list of Particles

class ParticleSystem {

  ArrayList<Particle> particles;    // An arraylist for all the particles
  PVector origin;                   // An origin point for where particles are birthed

  ParticleSystem(int num, PVector v) {
    particles = new ArrayList<Particle>();   // Initialize the arraylist
    origin = v.get();                        // Store the origin point
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin));    // Add "num" amount of particles to the arraylist
    }
  }


  void run(color col) {
    // Cycle through the ArrayList backwards, because we are deleting while iterating
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run(col);
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }

  void addParticle() {
    Particle p;
    // Add either a Particle or CrazyParticle to the system
    if (int(random(0, 2)) == 0) {
      p = new Particle(origin);
    } 
    else {
      p = new CrazyParticle(origin);
    }
    particles.add(p);
  }

  void addParticle(Particle p) {
    particles.add(p);
  }

  // A method to test if the particle system still has particles
  boolean dead() {
    return particles.isEmpty();
  }
}


