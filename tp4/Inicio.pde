void inicio(){
 if (estado.equals ("presentacion"));//.................................
  image(fotos[0], 0, 0);
  textFont(titulo, 120);
  textAlign(CENTER);
  fill(230, 0, 0);
  text("Noche Fatal", width/2, height/2+20);
  fill(255);
  textSize(30);
  text("Presione ENTER para empezar", width/2, height-20);

 if (estado.equals("comienzo")) {//.................................
    image(fotos[1], 0, 0);
    fill(0, 190);
    rect(170, 275, 460, 100);//boton texto
    rect(210, 535, 375, 50);
    fill(255);
    textFont(texto, 20);
    text("Elena, una joven de 17 años se muda a Centfor\n con su familia. La casa es antigüa, de dos plantas\n y elegante con muebles de madera", width/2, height/2+8);
    textSize(15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
    
  } else if (estado.equals("voz")) {//.................................
    image(fotos[2], 0, 0);
    fill(0, 150);
    rect(200, 275, 400, 100);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("Mientras bajan las maletas del auto\n Elena se acerca a la casa y escucha una voz\nque la llama hacia adentro", width/2, height/2+8);

    fill(0, 150);
    rect(300, 425, 200, 50);//botón de entrar
    rect(300, 485, 200, 50);//botón de ir hacia el auto

    fill(0);
    textFont(texto, 15);
    text("(Haga click en la opción que desee elegir)", width/2, height-200);
    fill(255);
    textFont(texto, 20);
    text("Entrar", width/2, height-145);//CAMINO 1
    text("Ir hacia el auto", width/2, height-85);//CAMINO 2
  }
}
