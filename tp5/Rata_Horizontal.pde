class Rata2 {
  float px, py;
  int tam;
  PImage rata2;
  boolean mover;

  Rata2() { //valores iniciales

    rata2 = loadImage("rata2.png");
    tam= 70;
    px= random(20, width-tam);
    py= random(40, height-tam);
  }

  void dibujarata2() {

    image(rata2, px, py, tam*2, tam);


    if (mover) {
      px+=2;
    } else {
      px-=2;
    }
  }

  void moverRata2() {
    if (px<0) {
      mover=true;
    }
    if (px>width-140) {
      mover= false;
    }
  }
}
