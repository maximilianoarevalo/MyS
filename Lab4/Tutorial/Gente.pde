public class Gente{
  ArrayList<Individuo> individuos;
  
  Gente(){
    individuos = new ArrayList<Individuo>();
  }
  
  void run(){
    for(Individuo i : individuos){
      i.run(individuos);
    }
  }
  
  void addIndividuo(Individuo i){
    individuos.add(i);
  }

}
