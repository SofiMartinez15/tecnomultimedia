void finalesAlternativos(){
  
    if (estado.equals("finaltragico")) {//Agarrar vela.................................
    image(fotos[10], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("Ella entra, la vela se apaga con una brisa, la ventana\n estaba cerrada, se queda inmóvil, algo la empuja por\n la espalda y se golpea la cabeza con un mueble.\n Elena se desangra en el suelo", width/2-5, height-350);
    fill(255);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height-150);
    fill(255, 0, 0);
    textFont(titulo, 40);
    text("FIN", width/2, height-50);
 
   } else if (estado.equals("mordida")) {//Quedarse quieta.................................
    image(fotos[14], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("El vampiro clava sus filosos colmillos\n en el cuello de la chica y absorbe\n su sangre hasta dejarla sin vida", width/2, height/14);
    textFont(texto, 15);
    fill(255);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height-150);
    fill(255, 0, 0);
    textFont(titulo, 40);
    text("FIN", width/2, height-50);
  
   } else if (estado.equals("error")) { //En el pecho
    background(75, 0, 0);
    image(fotos[23], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("El vampiro se saca el palo y se ríe,\n luego muerde a Elena y corre detrás\n de la madre y del hermano alcanzándolos", width/4, height/2);
    textFont(texto, 15);
    text("(Presione LEFT para volver atrás)", width/2, height-50);
  }
}
