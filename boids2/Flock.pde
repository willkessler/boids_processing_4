// The Flock (a list of Boid objects)
class Flock {
  Boid[] boids;
  int currentNumBoids;

  void setup(int numBoids) {
    currentNumBoids = 0;  
    boids = new Boid[numBoids];
    while (currentNumBoids < numBoids) {
      boids[currentNumBoids++] = new Boid(width/2,height/2);
    }    
  }
 
  void addBoid(int startX, int startY) {
    boids = (Boid[]) expand(boids, currentNumBoids+1);
    boids[currentNumBoids++] = new Boid(mouseX,mouseY);
  }

  void runBoids() {
    for (Boid b : boids) {
      b.run(boids); // Passing the entire list of boids to each boid individually
    }
  }

}
