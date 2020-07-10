String estado;
int bx, by, ban, bal, y;
PFont titulo, texto;
PImage presentacion, comienzo, voz, pasillo, desempacando, puerta, izquierda, derecha, cena, puertaS2, finaltragico, siluetahombre, partido, vampiro, mordida, colmillos, puertacerrada, llaves, Final1, padre, sangre, palo, muertes, error, Final2, creditos;
void setup() {
  size(600, 660);
  surface.setLocation(710, 30);

  bx=100;//UBIC X 
  by=bx*3;//UBIC Y
  ban=bx*2;//ANCHO
  bal=bx/2;//ALTO
  y=height;

  titulo=loadFont("NF.vlw");
  texto=loadFont("Historia.vlw");
  presentacion=loadImage("Casa.jpg");
  comienzo=loadImage("adentro.jpg");
  voz=loadImage("entrada.png");
  pasillo=loadImage("pasillo.png");
  desempacando=loadImage("desempacando.png");
  puerta=loadImage("puerta semiabierta.jpg");
  izquierda=loadImage("hab1.png");
  derecha=loadImage("hab2.png");
  cena=loadImage("cena.png");
  puertaS2=loadImage("puerta semiabierta2.jpg");
  finaltragico=loadImage("final trágico.png");
  siluetahombre=loadImage("hombre.jpg");
  partido=loadImage("palopartido.png"); 
  vampiro=loadImage("vampiro.png");
  mordida=loadImage("mordida.png");
  colmillos=loadImage("colmillos.jpg");
  puertacerrada=loadImage("puerta cerrada.jpg");
  llaves=loadImage("llaves.jpg");
  Final1=loadImage("Final1.png");
  padre=loadImage("padre.jpg");
  sangre=loadImage("sangre.png");
  palo=loadImage("palo.png");
  muertes=loadImage("muertes.jpg");
  error=loadImage("error.png");
  Final2=loadImage("Final2.jpg");
  creditos=loadImage("creditos.png");
  
  estado="presentacion";
}
void draw() {

  println("estado es:" + estado );
  println("X es:" + mouseX ); 
  println("Y es:"+ mouseY ); 
  if (estado.equals ("presentacion"));//.................................
  image(presentacion, 0, 0, width, height);
  textFont(titulo, 120);
  textAlign(CENTER);
  fill(230, 0, 0);
  text("Noche Fatal", width/2, height/2+20);
  fill(255);
  textSize(30);
  text("Presione ENTER para empezar", width/2, height/2+bal*5+60);

  if (estado.equals("comienzo")) {//.................................
    image(comienzo, 0, 0, width, height);
    fill(0, 190);
    rect(bx*3/4, by, width/2+ban*3/4, bal*2);
    rect(width/5, height-65, ban*2-40, bal);
    fill(255);
    textFont(texto, 20);
    text("Elena, una joven de 17 años se muda a Centfor\n con su familia. La casa es antigüa, de dos plantas\n y elegante con muebles de madera.", width/2, height/2+5);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height/2*2-35);
    
  } else if (estado.equals("voz")) {//.................................
    image(voz, 0, 0, width, height);
    rectMode(CORNER);
    fill(0, 150);
    rect(bx, by, ban*2, bal*2);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("Mientras bajan las maletas del auto\n Elena se acerca a la casa y escucha una voz\nque la llama hacia adentro.", width/2, height/2+5);

    rectMode(CENTER);
    fill(0, 150);
    rect(width/2, height/2+by/2, ban, bal);//botón de entrar
    rect(width/2, height/2+by-90, ban, bal);//botón de ir hacia el auto

    fill(0);
    textFont(texto, 15);
    text("(Haga click en la opción que desee elegir)", width/2, height/2+by/3);
    fill(255);
    textFont(texto, 20);
    text("Entrar", width/2, height/2+bal*6/2+5);//CAMINO 1
    text("Ir hacia el auto", width/2, height/2+bal*6/2+65);//CAMINO 2
    
  } else if (estado.equals("pasillo")) { //CAMINO 1.................................
    image(pasillo, 0, 0, width, height);

    fill(0, 170);
    rect(bx, height-by/6, ban, bal);//botón de "a la izquierda"
    rect(bx*5, height-by/6, ban, bal);//botón de "a la derecha"
    fill(0, 100);
    rect(width/2, height/2, ban*2, bal*2);
    fill(220);
    textFont(texto, 20);
    text("Elena sube las escaleras y se dirige a un \n pasillo, siente una brisa en el pelo,\n se encuentra con dos habitaciones.", width/2, height/2-15);
    textFont(titulo, 25);
    text("A la izquierda", bx, height-bal+5);//CAMINO 1 A
    text("A la derecha", bx*5, height-bal+5);//CAMINO 1 B
    
  } else if (estado.equals("izquierda")) {//CAMINO 1 A...............................
    image(izquierda, 0, 0, width, height);
    fill(200);
    textFont(texto, 20);
    text("La puerta está cerrada con\n llave, Elena siente curiosidad.", width/2, height/2);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("derecha")) {//CAMINO 1 B.................................
    image(derecha, 0, 0, width, height);
    fill(0, 170);
    rect(width/2, height-30, ban*2-40, bal-20);//botón de barra espaciadora
    rect(width/2, height/2, ban*2-90, bal*2-30);
    fill(255);
    textFont(texto, 20); 
    text("La habitación de Elena,\n bastante amplia pero oscura.", width/2, height/2-5);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("desempacando")) {//CAMINO 2.......................................
    background(0);
    image(desempacando, 0, height/5, width, height/2+bal*2 );

    fill(255);
    textFont(texto, 20);
    text("Sin darle importancia, Elena ayuda a desempacar\n las maletas del auto. La hora pasa y oscurece.\n Luego de cenar se dirige a su habitación.", width/2, height/14);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("puerta")) {//.................................
    background(0);
    image(puerta, 0, height/5, width, height/2+bal*2);
    fill(255, 20);
    rect(bx, height-by/6, ban, bal);//botón de la izquierda, del palo
    rect(bx*5, height-by/6, ban, bal);//botón de la derecha, de la vela
    fill(200);
    textFont(texto, 20);
    text("Cuando estaba por apagar la luz\nescucha una voz en el pasillo, ve que\n la habitación del frente está semiabierta.", width/2, height/12);
    textSize(15);
    text("Agarrar vela", bx*5, height-bal+5);
    text("Agarrar palo de madera", bx, height-bal+5);
    
  } else if (estado.equals("cena")) {//.................................
    image(cena, 0, 0, width, height);
    fill(0, 150);
    rect(width/2, height/2+22, ban*2, bal*2);
    fill(200);
    textFont(texto, 20);
    text("Vuelve afuera y ayuda a sus padres\n a desempacar, cae la noche y es hora\n de la cena, luego se dirigen a sus\n habitaciones para dormir.", width/2, height/2-5);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height/2*2-35);
    
  } else if (estado.equals("puertaS2")) {//.................................
    background(0);
    image(puertaS2, 0, height/5, width, height/2+bal*2);
    fill(255, 20);
    rect(bx, height-by/6, ban, bal);//botón de la izquierda, del palo
    rect(bx*5, height-by/6, ban, bal);//botón de la derecha, de la vela
    fill(200);
    textFont(texto, 20);
    text("Justo cuando iba a apagar la luz, Elena\n escucha otra vez la voz pero más fuerte,\n sale al pasillo y ve que la puerta de la\n habitación del frente está semiabierta.", width/2, height/12);
    textSize(15);
    text("Agarrar vela", bx*5, height-bal+5);
    text("Agarrar palo de madera", bx, height-bal+5);
    
  } else if (estado.equals("finaltragico")) {//.................................
    image(finaltragico, 0, 0, width, height);
    fill(255);
    textFont(texto, 20);
    text("Ella entra, la vela se apaga con una brisa, la ventana\n estaba cerrada, se queda inmóvil, algo la empuja por\n la espalda y se golpea la cabeza con un mueble.\n Elena se desangra en el suelo.", width/2-5, height/2-bal);
    fill(255);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height/2+by/2);
    fill(255, 0, 0);
    textFont(titulo, 40);
    text("FIN", width/2, height-bal);
    
  } else if (estado.equals("siluetahombre")) {//.................................
    image(siluetahombre, 0, 0, width, height+bal);
    fill(200);
    textFont(texto, 20);
    text("Ella entra, por la ventana se ilumina la\n habitación, alguien le susurra al oído y\n se da la vuelta, ve una silueta humana\n y empieza a gritar del miedo.", width/2, height/2);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height/2*2-25);
    
  } else if (estado.equals("partido")) {//.................................
    background(0);
    image(partido, 0, 0, width, height);
    fill(0, 170);
    rectMode(CORNER);
    rect(bx-30, by, ban*2+65, bal*2);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("La silueta se mueve velozmente a su espalda, ella\n reacciona y le pega con el palo, pero él lo agarra y lo\n parte por la mitad, arrojándolo hacia la puerta.", width/2, height/2);
    textSize(15);
    text("Presione c para continuar", width/2, height/2*2-25);
    
  } else if (estado.equals("vampiro")) {//.................................
    image(vampiro, 0, 0, width, height+bal);
    fill(255, 20);
    rect(0, height-by/4, ban, bal);//botón de salir corriendo
    rect(bx*4, height-by/4, ban, bal);//botón de quedarse quieta 
    fill(255);
    textFont(texto, 15);
    text("Intentar salir corriendo", bx, height-bal+5);
    text("Quedarse quieta", bx*5, height-bal+5);
    textFont(texto, 20);
    text("Elena se da cuenta de todo, la brisa\n en el pelo, la velocidad y la fuerza del\n VAMPIRO", width/2, height/12);
    
  } else if (estado.equals("mordida")) {//.................................
    image(mordida, 0, 0, width+bx, height);
    fill(255);
    textFont(texto, 20);
    text("El vampiro clava sus filosos colmillos\n en el cuello de la chica y absorbe\n su sangre hasta dejarla sin vida.", width/2, height/14);
    textFont(texto, 15);
    fill(255);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height-by/2);
    fill(255, 0, 0);
    textFont(titulo, 40);
    text("FIN", width/2, height-bal);
    
  } else if (estado.equals("colmillos")) {//.................................
    background(0);
    image(colmillos, 0, height/5, width, height/2+bal*2);
    fill(255);
    textFont(texto, 20);
    text("El vampiro cierra la puerta trabándola\n y le muestra su colmillos, ella se asusta\n y empieza a gritar. Los padres y su\n hermano la escuchan y suben.", width/2, height/16);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("puertacerrada")) {//.................................
    background(0);
    image(puertacerrada, 0, 0, width, height);
    fill(0, 100);
    rect(0, height-by/4, ban, bal);//botón de agarrar palanca
    rect(bx*4, height-by/4, ban, bal);//botón de agarrar llavero
    rect(bx*2-20, height/2+by-by/2+20, ban+40, bal);//botón de texto de pregunta
    fill(200);
    textFont(texto, 15);
    text("Agarrar palanca", bx, height-bal+5);
    text("Agarrar llavero", bx*5, height-bal+5);
    fill(255);
    textFont(texto, 20);
    text("Una vez detrás de la puerta, el padre desesperado \n intenta tirarla abajo pero no lo logra.\n Adentro el vampiro se abalanza sobre Elena \n e intenta morderle el cuello.", width/2, height/2-bal);
    textSize(15);
    text("¿Qué hacer para abrir la puerta?", width/2, height/2+bal*4);
    
  } else if (estado.equals("llaves")) {//.................................
    image(llaves, 0, 0, width, height);
    fill(0, 120);
    rectMode(CORNER);
    rect(bx-20, by, ban*2+40, bal*2+20);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("El padre agarra su llavero pero se le cae\n de  las manos debido a la desesperación \ny los gritos, lo recoge y empieza a probar\n las llaves pero ninguna encaja.", width/2, height/2);
    textSize(15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("Final1")) {//.................................
    image(Final1, 0, 0, width, height);
    fill(255, 30);
    rect(bx*4, height-by/3, ban, bal);//botón de "terminar"
    fill(255);
    textFont(texto, 15);
    text("Terminar", bx*5, height-bal-20);
    fill(255);
    textFont(texto, 20);
    text("Finalmente la puerta se abre pero gracias a\n Elena, o mejor dicho a su fuerza vampírica.\n Ella mira a su familia pero su corazón es\n demasiado frío y su humanidad ya no existe.", width/2, height/2);
    fill(255, 10, 10);
    textFont(titulo, 30);
    text("El resto de la historia está bañada en sangre.", width/2, height-by+bal*2);
    fill(255, 0, 0);
    textSize(40);
    text("FIN", width/2, height-bal);
    
  } else if (estado.equals("padre")) {//.................................
    image(padre, 0, 0, width, height);
    fill(255);
    textFont(texto, 20);
    text("Justo en ese momento, el padre logra abrir\nla puerta y entra, reconoce al vampiro por\n sus colmillos y le clava en la espalda el\n  palo de madera roto.", width/2, height/2-bal/2);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("sangre")) {//.................................
    background(0);
    image(sangre, 0, height/5, width, height/2);
    fill(255);
    textFont(texto, 20);
    text("El vampiro deja a la chica pero no muere, se\n saca el palo y se cura rápidamente, todos se\n sorprenden. El vampiro enojado se dirige hacia \n el padre y le muerde el cuello absorbiendo su sangre.", width/2, height/16);
    textFont(texto, 15);
    text("Presione v para continuar", width/2, height-bal/2);
    
  } else if (estado.equals("palo")) {//.................................
    background(0);
    image(palo, 0, 0, width, height-bal*3+10);
    fill(255, 20);
    rect(0, height-by/4, ban, bal);//botón de "en el corazón"
    rect(bx*4, height-by/4, ban, bal);//botón de "en el pecho"
    fill(255);
    textFont(texto, 20);
    text("Elena toma la otra mitad del palo y le grita\n al vampiro, este deja al padre tirado en el\n suelo y se da la vuelta, en ese  instante Elena \n se apresura y le clava el palo con punta:", width/2, height/2-bal);
    textFont(texto, 15);
    text("En el corazón", bx, height-bal+5);
    text("En el pecho", bx*5, height-bal+5);
    
  } else if (estado.equals("muertes")) {//.................................
    image(muertes, 0, 0, width, height);
    fill(255);
    textFont(texto, 20);
    text("Así, el vampiro muere. Elena, su madre y su\n hermano, que estaban en shock, se dirigen hacia \n el padre, pero lamentablemente ya había muerto.", width/2, height/2);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-bal/2);
  } else if (estado.equals("error")) {
    background(75, 0, 0);
    image(error, 0, height/6, width, height/2+bal*2);
    fill(255);
    textFont(texto, 20);
    text("El vampiro se saca el palo y se ríe,\n luego muerde a Elena y corre detrás\n de la madre y del hermano alcanzándolos.", bx*2, height/2);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height-bal);
    
  } else if (estado.equals("Final2")) {//.................................
    image(Final2, 0, 0, width, height);
    fill(0, 180);
    rect(0, height-by/3, ban, bal);//botón de "terminar"
    rectMode(CORNER);
    rect(bx-20, by, ban*2+40, bal*2-20);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("Días después del funeral deciden empacar\n e irse de la casa y de Centfor.", width/2, height/2+5);
    textFont(texto, 15);
    text("Terminar", bx, height-bal-20);
    fill(255, 0, 0);
    textFont(titulo, 50);
    text("FIN", width/2, height-bal);
    
  } else if (estado.equals("creditos")) {//.................................
    image(creditos, 0, 0, width, height);
    fill(0, 200);
    rect(bx*4, height-by/3, ban, bal);//botón de "backspace" para volver a empezar
    fill(255);
    textFont(titulo, 40);
    text("Trabajo Práctico n°3 \n\nTecnología Multimedial 1\n\n Alumna: Sofía Martínez\n\n Legajo: 85061/8\n\n Comisión: 1 - 8:00 AM\n\n Profesor: José Luis Bugiolachi\n\n Inspirado en: The Vampire Diaries\n\nFDA\n\n2020", width/2, y+50);
    textFont(texto, 15);
    text("Aprete la tecla BACKSPACE ", bx*5, height-bal-20);
    y-=3;
  }
}
void keyPressed() {
  if (keyCode==ENTER&&estado=="presentacion") {//cuando presiono Enter
    estado="comienzo";
    //cambio de estado:presentación --> comienzo de la historia
  }
  if (key== ' '&&estado=="comienzo") {//cuando presiono la barra espaciadora
    estado="voz";
    //cambio de estado:comienzo --> voz
  }
  if (key== ' '&&estado=="desempacando") {
    estado="puerta";
    //cambio de estado:desempacando --> cena
  }

  if (key== ' '&&estado=="cena") {
    estado="puertaS2";
    //cambio de estado:cena --> puertaS2
  }
  if (key== ' '&&estado=="izquierda"||estado=="derecha") {
    estado="cena";
    //cambio de estado:izquierda o derecha --> cena
  }

  if (key== ' '&&estado=="siluetahombre") {
    estado="partido";
    //cambio de estado: siluetahombre--> partido
  }
  if (key== 'c'&&estado=="partido") {
    estado="vampiro";
    //cambio de estado: partido--> vampiro
  }

  if (keyCode== LEFT &&estado=="mordida") {
    estado="vampiro";
    //cambio de estado: mordida --> vampiro
  }

  if (keyCode== LEFT &&estado=="finaltragico") {
    estado="puertaS2";
    //cambio de estado: finaltragico --> puertaS2
  }

  if (key==' '  &&estado=="colmillos") {
    estado="puertacerrada";
    //cambio de estado: colmillos --> puerta cerrada

  }
  if (key==' '  &&estado=="llaves") {
    estado="Final1";
    //cambio de estado: llaves --> Final1
  }

  if (key==' '  &&estado=="padre") {
    estado="sangre";
    //cambio de estado: padre --> sangre
  }

  if (key=='v'  &&estado=="sangre") {
    estado="palo";
    //cambio de estado: sangre --> palo
  }

  if (key==' '  &&estado=="muertes") {
    estado="Final2";
    //cambio de estado: muertes --> Final2
  }
  if (keyCode==LEFT  &&estado=="error") {
    estado="palo";
    //cambio de estado: error --> palo
  }

  if (keyCode==BACKSPACE &&estado=="creditos") {
    estado="presentacion";
    //cambio de estado: creditos --> presentación
  }
}

void mousePressed() {

  //cuando hago click sobre la zona del botón de "entrar"
  if (mouseX>200&&mouseX<400&&mouseY>456&&mouseY<505&&estado=="voz") {
    estado="pasillo";
    //cambio de estado: voz --> pasillo
  }
  //cuando hago click sobre la zona del botón de "ir hacia el auto"
  if (mouseX>200&&mouseX<400&&mouseY>515&&mouseY<563&&estado=="voz") {
    estado="desempacando";
    //cambio de estado: voz --> desempacando
  }

  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="pasillo") {
    estado="izquierda";
    //cambio de estado:´pasillo --> izquierda
  }

  if (mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="pasillo") {
    estado="derecha";
    //cambio de estado: pasillo --> derecha
  }
  //cuando hago click en el botón del "palo de madera"
  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="puertaS2"||mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="puerta") {
    estado="siluetahombre";
    //cambio de estado: puertaS2 o puerta --> siluetahombre
  }

  //cuando hago click en el botón de la "vela"
  if (mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="puertaS2"||mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="puerta") {
    estado="finaltragico";
    //cambio de estado: puertaS2 o puerta--> finaltragico
  }

  //cuando hago click en el botón de "Intentar salir corriendo"
  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="vampiro") {
    estado="colmillos";
    //cambio de estado: vampiro --> colmillos
  }

  //cuando hago click en el botón de "Quedarse quieta"
  if (mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="vampiro") {
    estado="mordida";
    //cambio de estado: vampiro --> mordida
  }

  //cuando hago click en el botón de la "palanca"
  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="puertacerrada") {
    estado="padre";
    //cambio de estado: puertacerrada --> padre
  }

  //cuando hago click en el botón del "llavero"
  if (mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="puertacerrada") {
    estado="llaves";
    //cambio de estado: puertacerrada --> llaves
  }
  //cuando hago click en el botón de "en el corazón"
  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="palo") {
    estado="muertes";
    //cambio de estado: palo --> muertes
  }

  //cuando hago click en el botón de "en el pecho"
  if (mouseX>400&&mouseX<600&&mouseY>585&&mouseY<634&&estado=="palo") {
    estado="error";
    //cambio de estado: palo --> error
  }
  //cuando hago click en el botón de "terminar"
  if (mouseX>400&&mouseX<600&&mouseY>559&&mouseY<609&&estado=="Final1"||estado=="Final2"&&mouseX>0&&mouseX<200&&mouseY>560&&mouseY<609) {
    estado="creditos";
    //cambio de estado: Final1 o Final2--> creditos
  }
}
