/* Elegí reemplazar la bifurcación de "agarrar llavero" (cuando se le cae y se le rompe el llavero al padre),elegí las ratas relacionaándolas con la comida del vampiro,
 es por esto que se encuentran en la casa,y la oscuridad debido a que se encontraba en un pasillo con poca iluminación */

Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  juego.dibujartodo();
  if (keyPressed) {
    juego.movermano();
  }
}

void keyPressed() {
  if (keyCode==' ') {
    juego.presionar(' '); //para agarrar las llaves con la barra, presionar es el metodo
    juego.desaparecerLlave();
  }
  juego.reiniciar();
  juego.empezar();
}
