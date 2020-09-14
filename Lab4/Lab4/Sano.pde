public class Sano extends Individuo{
  Sano(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = false;
    c1 = 0;
    c2 = 128;
    c3 = 0;
    //Manera de caminar propia
    if(walking_way % 2 == 0){
      //Random Walk Gaussian
      velocity = new PVector(sigma * randomGaussian(),sigma * randomGaussian());
    }
    else{
      //Alternative Random Walk Gaussian
      velocity = new PVector(s * cos(theta), s * sin(theta));
    }
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
