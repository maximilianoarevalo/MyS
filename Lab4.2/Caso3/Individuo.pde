public class Individuo{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;
  float maxspeed;
  boolean sick;
  int c1, c2, c3;
  float radius = 10;
  float vel = 2.0;
  float minDistance = 2 * radius;
  float m = radius*.1;
  boolean maskOn = false;
  float socialDistancing = 1.5 * minDistance;
  boolean recovered;
  int maxTiempoEnfermo = 15000;
  float pTransmision;
  int timeInfected = 0;
  boolean inHouse;
  float pInHouse = 0.1;
  float inHouseRandomizer;

  
  
  Individuo(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxspeed = 5;
    maxforce = 10;
    inHouseRandomizer = random(0,1);
    if(inHouseRandomizer<=pInHouse){
      inHouse=true;
      velocity=new PVector(0,0);
    }
    else{
      inHouse=false;
      velocity = PVector.random2D();
    }
    if(maskOn==true){
      pTransmision = 0.4;
    }
    else{
      pTransmision = 0.9;
    }
    
  }  
  
  void render(){
    fill(c1,c2,c3);
    ellipse(position.x,position.y,radius,radius);
    if(maskOn){
      fill(#ffffff);
     rect(position.x - radius, position.y - radius*0.5, 2*radius, radius);
    }
    
    
  }
    void checkBoundaryCollision() {
    if (position.x > width-radius) {
      position.x = width-radius;
      velocity.x *= -1;
    } else if (position.x < radius) {
      position.x = radius;
      velocity.x *= -1;
    } else if (position.y > height-radius) {
      position.y = height-radius;
      velocity.y *= -1;
    } else if (position.y < radius) {
      position.y = radius;
      velocity.y *= -1;
    }
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
  
  //Funcion obtenida desde los ejemplos de la pagina de processing
  //https://processing.org/examples/circlecollision.html
  void checkCollision(Individuo other){
    //se ven las distancias
    PVector distanceVect = PVector.sub(other.position,position);
    //magnitud del vector que separa los individuos
    float distanceVectMag = distanceVect.mag();
    
    //minima distancia antes de la colision
    float minDistance = 2*radius;
    
    if(distanceVectMag < minDistance){
      float distanceCorrection = (minDistance - distanceVectMag)/2.0;
      PVector d = distanceVect.copy();
      PVector correctionVector = d.normalize().mult(distanceCorrection);
      other.position.add(correctionVector);
      position.sub(correctionVector);
      
      //Se obtiene el angulo de distanceVect
      float theta = distanceVect.heading();
      float sine = sin(theta);
      float cosine = cos(theta);

      PVector[] bTemp = {
        new PVector(), new PVector()
      };
      bTemp[1].x  = cosine * distanceVect.x + sine * distanceVect.y;
      bTemp[1].y  = cosine * distanceVect.y - sine * distanceVect.x;

      // Se rotan las velocidades temporales
      PVector[] vTemp = {
        new PVector(), new PVector()
      };
       vTemp[0].x  = cosine * velocity.x + sine * velocity.y;
      vTemp[0].y  = cosine * velocity.y - sine * velocity.x;
      vTemp[1].x  = cosine * other.velocity.x + sine * other.velocity.y;
      vTemp[1].y  = cosine * other.velocity.y - sine * other.velocity.x;

      PVector[] vFinal = {  
        new PVector(), new PVector()
      };

      vFinal[0].x = ((m - other.m) * vTemp[0].x + 2 * other.m * vTemp[1].x) / (m + other.m);
      vFinal[0].y = vTemp[0].y;

      vFinal[1].x = ((other.m - m) * vTemp[1].x + 2 * m * vTemp[0].x) / (m + other.m);
      vFinal[1].y = vTemp[1].y;

      bTemp[0].x += vFinal[0].x;
      bTemp[1].x += vFinal[1].x;

      PVector[] bFinal = { 
        new PVector(), new PVector()
      };

      bFinal[0].x = cosine * bTemp[0].x - sine * bTemp[0].y;
      bFinal[0].y = cosine * bTemp[0].y + sine * bTemp[0].x;
      bFinal[1].x = cosine * bTemp[1].x - sine * bTemp[1].y;
      bFinal[1].y = cosine * bTemp[1].y + sine * bTemp[1].x;

      other.position.x = position.x + bFinal[1].x;
      other.position.y = position.y + bFinal[1].y;

      position.add(bFinal[0]);

      // update velocities
      velocity.x = cosine * vFinal[0].x - sine * vFinal[0].y;
      velocity.y = cosine * vFinal[0].y + sine * vFinal[0].x;
      other.velocity.x = cosine * vFinal[1].x - sine * vFinal[1].y;
      other.velocity.y = cosine * vFinal[1].y + sine * vFinal[1].x;
      
    }
  }
  void run(){
    if(sick==true){
      ellipseMode(RADIUS);
      c1=255;c2=0;c3=0;
    }
    else if(sick==false){
      ellipseMode(RADIUS);
      c1=0;c2=128;c3=0;
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
        ellipseMode(RADIUS);
        c1=0;c2=0;c3=128;
      
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
