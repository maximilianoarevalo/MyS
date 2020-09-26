public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  boolean sick;
  int c1, c2, c3;
  float radius = 8.0;
  float vel = 2.0;
  float minDistance = 2 * radius;
  float socialDistancing = 1.5 * minDistance;
  float pTransmision = 0.5;
  float pEnfermos = 0.3;
  int maxTiempoEnfermo = 20;
  boolean maskOn;
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxspeed = 5;
    maxforce = 10;
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
