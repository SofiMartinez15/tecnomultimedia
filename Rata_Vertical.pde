class Rata1 {
  float px, py;
  int tam;
  PImage rata1;
  boolean mover;


  Rata1() { //valores iniciales

    rata1 = loadImage("rata1.png");
    tam= 90;
    px= random(0, width-100);
    py= random(20, height-100);
  }

  void dibujarata1() {
    image(rata1, px, py, tam, tam);

    if (mover) {
      py+=2;
    } else {
      py-=2;
    }
  }

  void moverRata1() {
    if (py<0) {
      mover=true;
    }
    if (py>height-140) {
      mover= false;
    }
  }
}
