public class Enfermo extends Individuo{
  Enfermo(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = true;
    c1 = 255;
    c2 = 0;
    c3 = 0;

  }
  
    void run(ArrayList<Enfermo> enfermos){
      update();
      borders();
      render();
    }
    
    void update(){
       alternativeMovement();
    }
    
    void gaussianMovement(){
       position.x += 1.5*randomGaussian();
       position.y += 1.5*randomGaussian();
    }
    void alternativeMovement(){
       position.x += s*cos(theta);
       position.y += s*sin(theta);
    }
}
