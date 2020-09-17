void desempacando(){
  
 if (estado.equals("desempacando")) {//CAMINO 2.......................................
    background(0);
    image(fotos[4], 0, height/5, width, height-200);

    fill(255);
    textFont(texto, 20);
    text("Sin darle importancia, Elena ayuda a desempacar\n las maletas del auto. La hora pasa y oscurece.\n Luego de cenar se dirige a su habitación", width/2, height/14);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  
  
  } else if (estado.equals("puerta")) {//Luego se junta con camino 1.................................
    background(0);
    image(fotos[5], 0, 0);
    fill(255, 20);
    rect(0, 524, 200, 50);//botón de la izquierda, del palo
    rect(600, 524, 200, 50);//botón de la derecha, de la vela
    fill(200);
    textFont(texto, 20);
    text("Cuando estaba por apagar la luz\nescucha una voz en el pasillo, ve que\n la habitación del frente está semiabierta", width/2, height/16);
    textSize(15);
    text("Agarrar vela", width-100, height-45);
    text("Agarrar palo de madera", 100, height-45);
  }
}
