/**
 * Flocking 
 * by Daniel Shiffman.  
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 * Click the mouse to add a new boid.
 */

int startNumBoids = 25;
Flock flock;

void setup() {
  size(1000, 600);
  flock = new Flock();
  flock.setup(startNumBoids);
}

void draw() {
  background(50);
  flock.runBoids();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(mouseX,mouseY);
}