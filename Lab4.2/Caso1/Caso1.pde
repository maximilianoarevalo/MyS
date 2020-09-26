Gente gente;

void setup(){
  size(1024,1024);
  gente = new Gente();
  float x;
  float y;
  float number_sick;
  float pEnfermos = 0.3;
  
  for(int i = 0; i < 50;i++){
    x = random(0,1023);
    y = random(0,1023);
    number_sick = random(0,1);
    Individuo individuo = new Individuo(x,y);
    individuo.velocity = PVector.random2D();
    if(number_sick <= pEnfermos){
      //agrego enfermo
      individuo.sick=true;
      individuo.timeInfected = millis();
      gente.addIndividuo(individuo);
    }
    else{
      individuo.sick=false;
      individuo.timeInfected=0;
      gente.addIndividuo(individuo);
    }
  }
}

void draw(){
  background(0);
  gente.run();
}
