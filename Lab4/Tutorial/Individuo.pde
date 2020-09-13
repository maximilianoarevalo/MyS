public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  boolean sick;
  float pe;
  float number;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    velocity = PVector.random2D();
    acceleration = new PVector(0,0);
    r = 2.0;
    maxspeed = 5;
    maxforce = 90;
    pe = 0.1;
    number = random(0,1);
    sick = false;
    if(number <= pe)
      sick = true;
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
    //stroke(255);
    //strokeWeight(2);
    if (sick == true){
      fill(255,0,0);
      ellipse(position.x,position.y,20,20);
    }
    else{
      fill(0,128,0);
      ellipse(position.x,position.y,20,20);
    }
  }

  
  void borders(){
    if (position.x < -r) position.x = width+r;
    if (position.y < -r) position.y = height+r;
    if (position.x > width+r) position.x = -r;
    if (position.y > height+r) position.y = -r;
  }
}
