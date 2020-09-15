public class Sano extends Individuo{
  Sano(float x, float y){
    //Constructor superclase
    super(x,y);
    sick = false;
    c1 = 0;
    c2 = 128;
    c3 = 0;
    
  }
  
    void run(ArrayList<Sano> sanos){
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
       position.x += (s*cos(theta));
       position.y += (s*sin(theta));
    }
}
