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
  float m = radius*.1;
  boolean maskOn = false;
  float socialDistancing = 1.5 * minDistance;
  boolean recovered;
  int maxTiempoEnfermo = 15000;
  float pTransmision = 0.5;
  int timeInfected = 0;

  
  
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
  void checkDistance(Individuo other){
    PVector distanceVect = PVector.sub(other.position,position);
    float pSick = random(0,1);
    float distanceVectMag = distanceVect.mag();
    if(distanceVectMag <= socialDistancing && pSick<=pTransmision){
      if(other.sick == true && sick==false){
        if(recovered==true){
          sick = false;
        }
        else{
          sick = true;
          timeInfected = millis();
        }
      }
      else if(other.sick==false && sick==true){
        if(other.recovered==true){
          other.sick = false;
        }
        else{
          other.sick = true;
          other.timeInfected = millis();
        }
      }
    }
  }
  
  void checkTimeInfected(){
    int delta = millis();
    delta = delta - timeInfected;
    if(delta>=maxTiempoEnfermo){
      sick=false;
      recovered=true;
    }
    else{
      sick =true;
      recovered = false;
    }
  }
  
  void run(){
    if(sick==true){
      c1 = 255;
      c2 = 0;
      c3 = 0;
    }
    else if(sick==false){
     c1 = 0;
    c2 = 128;
    c3 = 0;
    }
    
      update();
      borders();
      render();
    }
  void update(){
      if(sick ==true){
      checkTimeInfected();
      }
      if(recovered ==true){
    c1=0;
    c2=0;
    c3=255;
    }
      velocity.add(acceleration);
      velocity.limit(maxspeed);
      position.add(velocity);
      acceleration.mult(0);
    }
  void borders(){
    if (position.x < 0) position.x = width+r;
    if (position.y < 0) position.y = height+r;
    if (position.x > width+0) position.x = -r;
    if (position.y > height+0) position.y = -r;
  }
}
