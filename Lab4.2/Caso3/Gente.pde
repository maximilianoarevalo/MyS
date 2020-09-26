public class Gente{

  ArrayList<Individuo> individuos;
  Gente(){
    individuos = new ArrayList<Individuo>();
  }
  
  void run(){

    for(Individuo i: individuos){
      i.run();
      for(Individuo j:individuos){
        if(j.inHouse==false && i.inHouse==false){
        i.checkCollision(j);
        i.checkDistance(j);
        }
      }
      
    }
    
    
  }
  void addIndividuo(Individuo i){
    individuos.add(i);
  }
}
