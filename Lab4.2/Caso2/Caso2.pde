Gente gente;

void setup(){
  size(1024,1024);
  gente = new Gente();
  float x;
  float y;
  float number_sick;
  float pe = 0.1;       
  for(int i = 0; i < 300;i++){
    x = random(0,1023);
    y = random(0,1023);
    number_sick = random(0,1);
    Individuo individuo = new Individuo(x,y);
    if(number_sick <= pe){
      //agrego enfermo
      individuo.sick=true;
      gente.addIndividuo(individuo);
    }
    else{
      individuo.sick=false;
      gente.addIndividuo(individuo);
    }
  }
}

void draw(){
  background(0);
  gente.run();
}
