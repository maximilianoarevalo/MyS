public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    velocity = PVector.random2D();
    acceleration = new PVector(0,0);
    r = 2.0;
    maxspeed = 5;
    maxforce = 0.100;
  }
  
  void run(ArrayList<Individuo> individuos){
    update();
    borders();
    render();
  }
  
  void update(){
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  void render(){
    //circle(random(0,1024),random(0,1024),2);
    // heading2D() above is now heading() but leaving old syntax until Processing.js catches up
    stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,10,10);
  }

  
  void borders(){
    if (position.x < -r) position.x = width+r;
    if (position.y < -r) position.y = height+r;
    if (position.x > width+r) position.x = -r;
    if (position.y > height+r) position.y = -r;
  }
}
