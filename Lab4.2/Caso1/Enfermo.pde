public class Enfermo extends Individuo{
  Enfermo(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = true;
    c1 = 255;
    c2 = 0;
    c3 = 0;
    velocity = PVector.random2D();
  }
  
    void run(ArrayList<Enfermo> enfermos){
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
    
}
