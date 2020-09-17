String estado;
PImage[] fotos = new PImage[26];
int y;
PFont titulo, texto;

void setup() {
  size(800, 600);
  surface.setLocation(550, 30);

  y=height;

  titulo=loadFont("NF.vlw");
  texto=loadFont("Historia.vlw");

  for (int i=0; i<fotos.length; i++) {
    fotos[i]= loadImage( "Foto " + i + ".jpg");
  }

  /* foto 0 = presentacion
   foto 1  = comienzo
   foto 2  = voz
   foto 3  = pasillo
   foto 4  = desempacando
   foto 5  = puerta
   foto 6  = izquierda
   foto 7  = derecha
   foto 8  = cena
   foto 9  = puertaS2
   foto 10 = finaltragico
   foto 11 = siluetahombre
   foto 12 =  partido
   foto 13 = vampiro
   foto 14 = mordida
   foto 15 = colmillos
   foto 16 = puertacerrada
   foto 17 = llaves
   foto 18 = Final1
   foto 19 = padre
   foto 20 = sangre
   foto 21 = palo
   foto 22 = muertes
   foto 23 = error
   foto 24 = Final2
   foto 25 = creditos
   */

  estado="presentacion";
}
void draw() {

  println("estado es:" + estado );
  println("X es:" + mouseX ); 
  println("Y es:"+ mouseY ); 
  
 inicio();
 entrar();
 desempacando();
 finalesAlternativos();
 finales();

}
void keyPressed() {
  botonEnter("presentacion", "comienzo"); 
  //cambio de estado:presentación --> comienzo de la historia

  botonBarra("comienzo", "voz"); 
  //cambio de estado:comienzo --> voz

  botonBarra("desempacando", "puerta");
  //cambio de estado:desempacando --> cena

  botonBarra("cena", "puertaS2");
  //cambio de estado:cena --> puertaS2

  botonBarra("izquierda", "cena");
  botonBarra("derecha", "cena");
  //cambio de estado:izquierda o derecha --> cena

  if (key== ' '&&estado=="siluetahombre") { //Caso excepcional para que no saltee una pantalla
    estado="partido";
    //cambio de estado: siluetahombre--> partido
  }
   else if(key==' '&&estado=="partido"){
    estado="vampiro";
 
     //cambio de estado: partido--> vampiro
  }

  botonLeft("mordida", "vampiro");
  //cambio de estado: mordida --> vampiro

  botonLeft("finaltragico", "puertaS2");
  //cambio de estado: finaltragico --> puertaS2

  botonBarra("colmillos", "puertacerrada");
  //cambio de estado: colmillos --> puerta cerrada

  botonBarra("llaves", "Final1");
  //cambio de estado: llaves --> Final1

  
  if (key==' '  &&estado=="padre") {    //Caso excepcional
    estado="sangre";
    //cambio de estado: padre --> sangre
  }

  else if (key==' ' &&estado=="sangre") {
    estado="palo";
    //cambio de estado: sangre --> palo
  }

  botonBarra("muertes", "Final2");
  //cambio de estado: muertes --> Final2

  botonLeft("error", "palo");
  //cambio de estado: error --> palo

  botonBorrar("creditos", "presentacion");
  //cambio de estado: creditos --> presentación
}


void mousePressed() {
  boton(300, 425, 200, 50, "voz", "pasillo"); //cuando hago click sobre la zona del botón de "entrar"
  //cambio de estado: voz --> pasillo

  boton(300, 485, 200, 50, "voz", "desempacando"); //cuando hago click sobre la zona del botón de "ir hacia el auto"
  //cambio de estado: voz --> desempacando

  boton(0, 524, 200, 50, "pasillo", "izquierda");
  //cambio de estado: pasillo --> izquierda

  boton(600, 524, 200, 50, "pasillo", "derecha");
  //cambio de estado: pasillo --> derecha

  boton(0, 524, 200, 50, "puertaS2", "siluetahombre"); //cuando hago click en el botón del "palo de madera"
  boton(0, 524, 200, 50, "puerta", "siluetahombre");
  //cambio de estado: puertaS2 o puerta --> siluetahombre

  boton(600, 524, 200, 50, "puertaS2", "finaltragico"); //cuando hago click en el botón de la "vela"
  boton(600, 524, 200, 50, "puerta", "finaltragico");
  //cambio de estado: puertaS2 o puerta--> finaltragico

  boton(0, 524, 200, 50, "vampiro", "colmillos"); //cuando hago click en el botón de "Intentar salir corriendo"
  //cambio de estado: vampiro --> colmillos

  boton(600, 524, 200, 50, "vampiro", "mordida"); //cuando hago click en el botón de "Quedarse quieta"
  //cambio de estado: vampiro --> mordida

  boton(0, 524, 200, 50, "puertacerrada", "padre"); //cuando hago click en el botón de la "palanca"
  //cambio de estado: puertacerrada --> padre

  boton(600, 524, 200, 50, "puertacerrada", "llaves"); //cuando hago click en el botón del "llavero"
  //cambio de estado: puertacerrada --> llaves

  boton(0, 524, 200, 50, "palo", "muertes");  //cuando hago click en el botón de "en el corazón"
  //cambio de estado: palo --> muertes

  boton(600, 524, 200, 50, "palo", "error");   //cuando hago click en el botón de "en el pecho"
  //cambio de estado: palo --> error

  boton(600, 500, 200, 50, "Final1", "creditos");  //cuando hago click en el botón de "terminar"
  boton(0, 500, 200, 50, "Final2", "creditos");
  //cambio de estado: Final1 o Final2--> creditos

  if (y<height) {
    y=height;
  }
}
