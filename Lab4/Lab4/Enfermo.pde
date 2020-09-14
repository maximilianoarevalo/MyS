public class Enfermo extends Individuo{
  Enfermo(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = true;
    c1 = 255;
    c2 = 0;
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
