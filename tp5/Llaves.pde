class Llaves {
  float px, py;
  int tam;
  PImage llave;



  Llaves() { //valores iniciales
    px=random(20, 650);
    py=random(50, 450);
    tam=100;
    llave = loadImage("llave2.png");
  }

  void dibujarllave() {


    image(llave, px, py, tam, tam);
  }
}
