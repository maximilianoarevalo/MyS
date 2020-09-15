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
       if(walking_way % 2 == 0){
        gaussianWalking();
      }
      else{
        //Alternative Random Walk Gaussian
        alternativeWalking();
      }
    }
    
    void gaussianWalking(){
       position.x += sigma*randomGaussian();
       position.y += sigma*randomGaussian();
    }
    
    void alternativeWalking(){
       float s = random(1,5);
       float theta = random(0,2*PI);
       position.x += s*cos(theta);
       position.y += s*sin(theta);
    }
}
