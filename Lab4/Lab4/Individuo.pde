public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  boolean sick;
  int c1, c2, c3;
  int walking_way;
  float sigma = 0.5;
  float theta = random(0,TWO_PI);
  int s = 1;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxspeed = 5;
    maxforce = 10;
    walking_way = int(random(0,9));
  }  
  
  void render(){
    fill(c1,c2,c3);
    ellipse(position.x,position.y,20,20);
  }

  
  void borders(){
    if (position.x < 0) position.x = width+r;
    if (position.y < 0) position.y = height+r;
    if (position.x > width+0) position.x = -r;
    if (position.y > height+0) position.y = -r;
  }
}
