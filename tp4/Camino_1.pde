void entrar() {
 if (estado.equals("pasillo")) { //CAMINO 1.................................
  image(fotos[3], 0, 0);

  fill(0, 170);
  rect(0, 524, 200, 50);//botón de "a la izquierda"
  rect(600, 524, 200, 50);//botón de "a la derecha"
  fill(0, 100);
  rect(200, 250, 400, 100);
  fill(220);
  textFont(texto, 20);
  text("Elena sube las escaleras y se dirige a un \n pasillo, siente una brisa en el pelo,\n se encuentra con dos habitaciones", width/2, height/2-15);
  textFont(titulo, 25);
  text("A la izquierda", 100, height-45);
  text("A la derecha", width-100, height-45);
  
} else if (estado.equals("izquierda")) {//CAMINO 1 A...............................
  image(fotos[6], 0, 0);
  fill(200);
  textFont(texto, 20);
  text("La puerta está cerrada con\n llave, Elena siente curiosidad", width/2, height/2);
  textSize(15);
  text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  
} else if (estado.equals("derecha")) {//CAMINO 1 B.................................
  image(fotos[7], 0, 0);
  fill(0, 170);
  rect(245, 264, 310, 70);
  fill(255);
  textFont(texto, 20); 
  text("La habitación de Elena,\n bastante amplia pero oscura", width/2, height/2-5);
  textSize(15);
  text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);

} else if (estado.equals("cena")) {//Pantalla en común/reencuentro.................................
  image(fotos[8], 0, 0);
  fill(0, 150);
  rect(210, 264, 380, 115);
  fill(200);
  textFont(texto, 20);
  text("Vuelve afuera y ayuda a sus padres\n a desempacar, cae la noche y es hora\n de la cena, luego se dirigen a sus\n habitaciones para dormir", width/2, height/2-5);
  textSize(15);
  text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  
} else if (estado.equals("puertaS2")) {//Pantalla en común/reencuentro.................................
  background(0);
  image(fotos[9], 0, 0);
  fill(255, 20);
  rect(0, 524, 200, 50);//botón de la izquierda, del palo
  rect(600, 524, 200, 50);//botón de la derecha, de la vela
  fill(200);
  textFont(texto, 20);
  text("Justo cuando iba a apagar la luz, Elena\n escucha otra vez la voz pero más fuerte,\n sale al pasillo y ve que la puerta de la\n habitación del frente está semiabierta", width/2, height/16);
  textSize(15);
  text("Agarrar vela", width-100, height-45);
  text("Agarrar palo de madera", 100, height-45);

} else if (estado.equals("siluetahombre")) {//.................................
    image(fotos[11], 0, 0);
    fill(200);
    textFont(texto, 20);
    text("Ella entra, por la ventana se ilumina la\n habitación, alguien le susurra al oído y\n se da la vuelta, ve una silueta humana\n y empieza a gritar del miedo", width/2, height/2);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2,height-35);
 
}  else if (estado.equals("partido")) {//.................................
    background(0);
    image(fotos[12], 0, 0);
    fill(0, 170);
    rect(150, 270, 500, 100);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("La silueta se mueve velozmente a su espalda, ella\n reacciona y le pega con el palo, pero él lo agarra y lo\n parte por la mitad, arrojándolo hacia la puerta", width/2, height/2+5);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  
}else if (estado.equals("vampiro")) {//.................................
    image(fotos[13], 0, 0);
    fill(255, 20);
    rect(0, 524, 200, 50);//botón de salir corriendo
    rect(600, 524, 200, 50);//botón de quedarse quieta 
    fill(255);
    textFont(texto, 15);
    text("Intentar salir corriendo", 100, height-45);
    text("Quedarse quieta", width-100, height-45);
    textFont(texto, 20);
    text("Elena se da cuenta de todo, la brisa\n en el pelo, la velocidad y la fuerza del\n VAMPIRO", width/2, height/12);
    
 } else if (estado.equals("colmillos")) {//.................................
    background(0);
    image(fotos[15], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("El vampiro cierra la puerta trabándola\n y le muestra su colmillos, ella se asusta\n y empieza a gritar. Los padres y su\n hermano la escuchan y suben", width/2, height/2-5);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-35);
  
  }else if (estado.equals("puertacerrada")) {//.................................
    background(0);
    image(fotos[16], 0, 0);
    fill(0, 100);
    rect(0, 524, 200, 50);//botón de agarrar palanca
    rect(600, 524, 200, 50);//botón de agarrar llavero
    rect(280, 470, 240, 50);//botón de texto de pregunta
    fill(200);
    textFont(texto, 15);
    text("Agarrar palanca", 100, height-45);
    text("Agarrar llavero", width-100, height-45);
    fill(255);
    textFont(texto, 20);
    text("Una vez detrás de la puerta, el padre desesperado \n intenta tirarla abajo pero no lo logra.\n Adentro el vampiro se abalanza sobre Elena \n e intenta morderle el cuello", width/2, height-350);
    textSize(15);
    text("¿Qué hacer para abrir la puerta?", width/2, height-100);
  }
}
