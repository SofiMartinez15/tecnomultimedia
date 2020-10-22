class Juego {
  int contadorllaves, heridas;
  boolean detenido;
  Mano personaje;
  Rata1[] enemigo1=new Rata1[3]; //declaramos y construimos
  Rata2[] enemigo2=new Rata2[3];
  Fondo madera;
  // Oscuridad oscuro;
  Llaves[] llaves=new Llaves[5];

  Juego() { //constructor
    personaje = new Mano();
    // oscuro=new Oscuridad();
    madera = new Fondo();
    for (int i=0; i<2; i++) {
      enemigo1[i]= new Rata1();
      enemigo2[i]= new Rata2();//cargamos los enemigos
    }
    for (int i=0; i<5; i++) {
      llaves[i]=new Llaves();
      detenido=true;
    }
  }

  void dibujartodo() { //método

    madera.dibujarpiso();
    for (int i=0; i<5; i++) { 
      llaves[i].dibujarllave();
    }        
    for (int i=0; i<2; i++) { //dibujamos/duplicamos con for las ratas
      enemigo1[i].dibujarata1();
      enemigo1[i].moverRata1();
      enemigo2[i].dibujarata2();
      enemigo2[i].moverRata2();
    }
    sacarsombra();
    personaje.dibujaroscuridad();
    personaje.dibujarmano();
    //oscuro.dibujaroscuridad();
    perder();
    ganar();
    vidasperdidas();

    textAlign(LEFT);
    textSize(25);
    fill(88, 170, 255);
    text("Llaves agarradas:"+ contadorllaves + "/5", width-275, 50);
    fill(255, 0, 0);
    text("Heridas: " + heridas+ "/5", 20, 50);
    detener(); //Empieza detenido el programa
  }
  void presionar(int tecla) {
    personaje.agarrar(tecla);
  }

  void movermano() {
    personaje.mover(keyCode);
    personaje.limites();
  }

  void desaparecerLlave() { //desaparecer llaves y contador
    for (int i=0; i<5; i++) {
      float contacto = dist(personaje.px, personaje.py, llaves[i].px, llaves[i].py);

      if (contacto<=llaves[i].tam && personaje.agarre == true) { 
        llaves[i].px = llaves[i].px+2000;
        contadorllaves+=1;
      }
    }
  }

  void vidasperdidas() { //contacto con ratas y heridas
    for (int i=0; i<2; i++) {
      float contacto = dist(personaje.px, personaje.py, enemigo1[i].px, enemigo1[i].py);
      if (contacto<=enemigo1[i].tam/2== true) { 
        heridas+=1;
        enemigo1[i].px=random(50, 600);
        enemigo1[i].py=random(50, 400);
      }
    }
    for (int i=0; i<2; i++) {
      float contacto = dist(personaje.px, personaje.py, enemigo2[i].px, enemigo2[i].py);
      if (contacto<=enemigo2[i].tam == true) { 
        heridas+=1;
        enemigo2[i].px=random(50, 600);
        enemigo2[i].py=random(50, 350);
      }
    }
  }
  void perder() {
    if (heridas==5) {
      textAlign(CENTER);
      textSize(35);
      fill(255, 0, 0);
      text("Te lastimaste mucho, inténtalo de nuevo", width/2, height/2);
      noLoop();
      personaje.sombra = true;
    }
  }

  void reiniciar() {
    if (keyCode==CONTROL) {
      heridas=0;
      personaje.sombra = true;

      loop();

      for (int i=0; i<5; i++) {
        llaves[i].px = random(20, 650);
        llaves[i].py = random(50, 450);
      }
    }
  }

  void ganar() {
    if (contadorllaves==5) {
      textAlign(CENTER);
      textSize(35);
      fill(0, 255, 0);
      text("¡Bien! recogiste todas las llaves", width/2, height/2);
      personaje.sombra = false;
      noLoop();
    }
    if (keyCode==CONTROL) {
      contadorllaves=0;
    }
  }
  void sacarsombra() {
    if (contadorllaves==5) {
      personaje.sombra = false;
    }
  }
  void detener() {
    if (detenido) {
      noLoop();
      textAlign(CENTER);
      textSize(25);
      fill(10, 255, 0);
      text("ENTER para comenzar \n Ctrl para reiniciar", width/2, height-50);
    }
  }
  void empezar() {
    if (keyCode==ENTER) {
      loop();
      detenido=false;
    }
  }
}
