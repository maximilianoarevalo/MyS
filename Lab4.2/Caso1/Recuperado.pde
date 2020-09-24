public class Recuperado extends Individuo{
  Recuperado(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = false;
    c1 = 0;
    c2 = 22;
    c3 = 255;
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
