public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  boolean sick;
  float pe;
  float number_sick;
  float number_movement;
  float sigma = 0.5;
  float theta = random(0,TWO_PI);
  int s = 2;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    int walking_way = int(random(0,9));
    if(walking_way % 2 == 0){
      //Random Walk Gaussian
      velocity = new PVector(sigma * randomGaussian(),sigma * randomGaussian());
    }
    else{
      //Alternative Random Walk Gaussian
      velocity = new PVector(s * cos(theta), s * sin(theta));
    }
    acceleration = new PVector(0,0);
    r = 2.0;
    maxspeed = 5;
    maxforce = 90;
    pe = 0.1;
    number_sick = random(0,1);
    sick = false;
    if(number_sick <= pe)
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
