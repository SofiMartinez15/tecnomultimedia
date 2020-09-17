void finales(){
  
  //FINAL 1
  
   if (estado.equals("llaves")) {//Si agarra el llavero.................................
    image(fotos[17], 0, 0);
    fill(0, 120);
    rect(185, 270, 420, 120);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("El padre agarra su llavero pero se le cae\n de  las manos debido a la desesperación \ny los gritos, lo recoge y empieza a probar\n las llaves pero ninguna encaja", width/2, height/2);
    textSize(15);
    text("Presione BARRA ESPACIADORA para continuar", width/2,height-35);
  } else if (estado.equals("Final1")) {//.................................
    image(fotos[18], 0, 0);
    fill(255, 30);
    rect(600, 500, 200, 50);//botón de "terminar"
    fill(255);
    textFont(texto, 15);
    text("Terminar", width-100, height-70);
    fill(255);
    textFont(texto, 20);
    text("Finalmente la puerta se abre pero gracias a\n Elena, o mejor dicho a su fuerza vampírica.\n Ella mira a su familia pero su corazón es\n demasiado frío y su humanidad ya no existe", width/2, height/2);
    fill(255, 10, 10);
    textFont(titulo, 30);
    text("El resto de la historia está bañada en sangre", width/2, height-150);
    fill(255, 0, 0);
    textSize(40);
    text("FIN", width/2, height-50);
  
  //FINAL 2
  
  } else if (estado.equals("padre")) {//Si agarra la palanca.................................
    image(fotos[19], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("Justo en ese momento, el padre logra abrir\nla puerta y entra, reconoce al vampiro por\n sus colmillos y le clava en la espalda el\n  palo de madera roto", width/2, height-325);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2,height-35);
    
  } else if (estado.equals("sangre")) {//.................................
    background(0);
    image(fotos[20], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("El vampiro deja a la chica pero no muere, se\n saca el palo y se cura rápidamente, todos se\n sorprenden. El vampiro enojado se dirige hacia \n el padre y le muerde el cuello absorbiendo su sangre", width/2, height/16);
    textFont(texto, 15);
    text("Presione la BARRA ESPACIADORA para continuar", width/2,height-35);
    
  } else if (estado.equals("palo")) {//.................................
    background(0);
    image(fotos[21], 0, 0);
    fill(255, 20);
    rect(0, 524, 200, 50);//botón de "en el corazón"
    rect(600, 524, 200, 50);//botón de "en el pecho"
    fill(255);
    textFont(texto, 20);
    text("Elena toma la otra mitad del palo y le grita\n al vampiro, este deja al padre tirado en el\n suelo y se da la vuelta, en ese  instante Elena \n se apresura y le clava el palo con punta:", width/2, height-350);
    textFont(texto, 15);
    text("En el corazón", 100, height-45);
    text("En el pecho", width-100, height-45);
    
  } else if (estado.equals("muertes")) {//.................................
    image(fotos[22], 0, 0);
    fill(255);
    textFont(texto, 20);
    text("Así, el vampiro muere. Elena, su madre y su\n hermano, que estaban en shock, se dirigen hacia \n el padre, pero lamentablemente ya había muerto", width/2, height/2);
    textFont(texto, 15);
    text("Presione BARRA ESPACIADORA para continuar", width/2, height-35);
    
  }else if (estado.equals("Final2")) {//.................................
    image(fotos[24], 0, 0);
    fill(0, 180);
    rect(0, 500, 200, 50);//botón de "terminar"
    rect(190, 32, 420, 65);//botón del texto
    fill(255);
    textFont(texto, 20);
    text("Días después del funeral deciden empacar\n e irse de la casa y de Centfor", width/2, height/10);
    textFont(texto, 15);
    text("Terminar", 100, height-70);
    fill(255, 0, 0);
    textFont(titulo, 50);
    text("FIN", width/2, height-50);
  
  } else if (estado.equals("creditos")) {//.................................
    image(fotos[25], 0, 0);
    fill(0, 200);
    rect(600, 500, 200, 50);//botón de "backspace" para volver a empezar
    fill(255);
    textFont(titulo, 40);
    text("Trabajo Práctico n°4 \n\nTecnología Multimedial 1\n\n Alumna: Sofía Martínez\n\n Legajo: 85061/8\n\n Comisión: 1 - 8:00 AM\n\n Profesor: José Luis Bugiolachi\n\n Inspirado en: The Vampire Diaries\n\nFDA\n\n2020", width/2, y+50);
    textFont(texto, 15);
    text("Aprete la tecla BACKSPACE ", width-97, height-70);
    y-=2;
  }
}
