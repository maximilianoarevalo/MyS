Gente gente;

void setup(){
  size(1024,1024);
  gente = new Gente();
  float x;
  float y;
  for(int i = 0; i < 300;i++){
    x = random(0,1023);
    y = random(0,1023);
    gente.addIndividuo(new Individuo(x,y));
  }
}

void draw(){
  background(0);
  gente.run();
}
