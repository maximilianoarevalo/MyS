public class Gente{
  //ArrayList<Individuo> individuos;
  ArrayList<Sano> sanos;
  ArrayList<Enfermo> enfermos;
  
  Gente(){
    //individuos = new ArrayList<Individuo>();
    sanos = new ArrayList<Sano>();
    enfermos = new ArrayList<Enfermo>();
  }
  
  void run(){
    /*for(Individuo i : individuos){
      i.run(individuos);
    }*/
    for(Sano i : sanos){
      i.run(sanos);
    }
    for(Enfermo j : enfermos){
      j.run(enfermos);
    }
  }
  
  /*void addIndividuo(Individuo i){
    individuos.add(i);
  }*/
  
  void addSano(Sano i){
    sanos.add(i);
  }
  
  void addEnfermo(Enfermo j){
    enfermos.add(j);
  }
}
