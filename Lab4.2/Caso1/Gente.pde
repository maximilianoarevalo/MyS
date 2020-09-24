public class Gente{
  ArrayList<Sano> sanos;
  ArrayList<Enfermo> enfermos;
  
  Gente(){
    sanos = new ArrayList<Sano>();
    enfermos = new ArrayList<Enfermo>();
  }
  
  void run(){
    for(Sano i : sanos){
      i.run(sanos);
    }
    for(Enfermo j : enfermos){
      j.run(enfermos);
    }
  }
  
  void addSano(Sano i){
    sanos.add(i);
  }
  
  void addEnfermo(Enfermo j){
    enfermos.add(j);
  }
}
