public class Sano extends Individuo{
  Sano(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = false;
    c1 = 0;
    c2 = 128;
    c3 = 0;
    velocity = PVector.random2D();
  }
  
    void run(ArrayList<Sano> sanos){
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
