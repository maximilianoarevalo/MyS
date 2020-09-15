public class Individuo{
  PVector position;
  PVector velocity;
  float r;
  boolean sick;
  int c1, c2, c3;
  int walking_way;
  float sigma = 1.5;
  float maxspeed= 0.5;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
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
