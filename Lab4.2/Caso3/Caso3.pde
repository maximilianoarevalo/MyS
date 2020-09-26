Gente gente;

void setup(){
  size(1024,1024);
  gente = new Gente();
  float x;
  float y;
  float number_sick;
  float pEnfermos = 0.3;
  float pMaskOn = 0.6;
  float randomMask;
  for(int i = 0; i < 50;i++){
    x = random(0,1023);
    y = random(0,1023);
    number_sick = random(0,1);
    randomMask = random(0,1);
    Individuo individuo = new Individuo(x,y);
    
    if(number_sick <= pEnfermos){
      //agrego enfermo
      individuo.sick=true;
      individuo.timeInfected = millis();
      
    }
    else{
      individuo.sick=false;
      individuo.timeInfected=0;
    }
    if(randomMask <= pMaskOn){
      individuo.maskOn = true;
    }
    gente.addIndividuo(individuo);
  }
}

void draw(){
  background(0);
  gente.run();
}
