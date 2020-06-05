/*Mantener el mouse fuera de la ventana hasta que desaparezca la imagen que se desplaza, luego moverlo dentro*/

PImage foto1, foto2, foto3, foto4, foto5, foto6, foto7;
PFont titulo, actores, personajes;
int x, y, y2, abajo, abajo2, abajo3, abajo4, abajo5, abajo6, abajo7, abajo8, posx, cero, arriba, arriba2, sube, sube1, px1, py1, izquierda, izquierda1;
float rojo, negro, valor, px, py;
void setup() {
  size(600, 500);
  posx=0;
  y=0;
  y2=height/2;
  negro=0;
  abajo=-150;
  abajo2=7300;
  abajo3=2800;
  abajo4=2845;
  abajo5=3000;
  abajo6=3045;
  abajo7=8500;
  abajo8=8900;
  cero=0;
  arriba=-2300;
  arriba2=700;
  sube1=800;
  sube=850;
  px1=-1300;
  izquierda=-1600;
  izquierda1=-3800;

  titulo=loadFont("TITULO.vlw");
  personajes=loadFont("P.vlw");
  actores=loadFont("A.vlw");

  foto1=loadImage("PARATITULO.jpg");
  foto2=loadImage("foto2.jpg");
  foto3=loadImage("foto3.jpg");
  foto4=loadImage("foto4.png");
  foto5=loadImage("foto5.jpg");
  foto6=loadImage("foto6.jpg");
  foto7=loadImage("foto7.jpg");
}

void draw() {

  fill(0);
  rect(0, 0, width, height);

  posx+=2;
  abajo+=3;
  abajo2-=+3;
  abajo3--;
  abajo4--;
  abajo5--;
  abajo6--;
  abajo7-=+3;
  abajo8-=+3;

  arriba+=1;
  arriba+=1;
  sube-=1;
  sube1-=1;
  px1+=2;
  izquierda++;
  izquierda1+=2;

  image(foto1, x, abajo, width, height);

  fill(negro, negro, 0);
  textAlign(LEFT);
  textFont(titulo, 70);
  text("Toy Story", width/6-10, y2);
  negro+=2;
  negro=map(posx, 250, 0, 255, 0);

  fill(rojo, 0, 0, 200);
  textAlign(CENTER, RIGHT);
  textFont(titulo, 200);

  text("4", width/2, y2+45); 
  rojo=map(posx, 0, 250, 0, 255);

  fill(0, valor);
  rect(0, 0, width, height);

  image(foto2, izquierda1, 150, width, 200);
  image(foto3, px1, 0, width, height);
  image(foto4, 0, arriba, width, height);
  image(foto5, 0, abajo2, width, height*2);
  image(foto6, 30, abajo7, mouseX, 300);
  image(foto7, 30, abajo8, mouseX, 300);
  fill(255, 0, 0);

  textSize(40);
  text("Cast", width/2, sube1); 
  fill(0, 0, 255);
  text("Música", izquierda, 70);
  fill(170, 160, 250);
  text("Direction", 440, abajo3);
  text("Production", 440, abajo5);

  fill(255);
  textFont(actores); /* No son actores pero ya le había dado ese nombre*/
  textSize(20);
  text("Josh Cooley", 440, abajo4);
  text("Jonas Rivera\n Mark Nielsen", 440, abajo6);
  text("Randy Newman", izquierda, 100);
  text("Mitchell Froom", izquierda, 400);

  text("Tom Hanks\n Tim Allen\n Annie Potts\n Tony Hale\n Keegan-Michael Key\n Madeleine McGraw\n Christina Hendricks\n Jordan Peele\n Keanu Reeves\n Ally Maki\n Jay Hernandez\n Lori Alan\n Joan Cussack\n Bonnie Hunt\n Kristen Schaal\n Wallace Shawn\n Emily Davis\n John Ratzenberger\n Blake Clarck\n Don Rickles\n Estelle Hansen\n Jeff Garlin\n Jeff Pidgeon", 400, sube);
  fill(235);

  textFont(personajes, 20);
  text("Woody\n Buzz Lightyear\n Bo Peep\n Forky\n Ducky\n Bonnie\n Gabby Gabby\n Bunny\n Duke Caboom\n Giggle McDimples\n Bonnie´s dad\n Bonnie´s mom\n Jessie\n Dolly\n Trixie\n Rex\n Billy, Goat & Gruff\n Hamm\n Slinky Dog\n mr.Potato Head\n mrs. Potato Head\n Buttercup\n Martians ", 200, sube);
}
void mouseMoved() {
  valor=valor+4;

  px = random(width); 
  py = random(height);
  float distan=dist(px, py, width/2, height/2);
  float distMax=dist(0, 0, width/2, height/2);
  float tam=map(distan, 0, distMax, 20, 90);
  noStroke();
  fill(255, 100);
  ellipse(px, py, tam, tam);
  /*Con el mouse fuera de la ventana no hay círculos pero cuando lo ingreso y lo muevo aparecen muchos círculos transparentes moviendose.Si lo dejo quieto dentro tampoco aparecen */
}
