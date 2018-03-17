//Implementación desde cero
//Bibliografia http://www.michaelbach.de/ot/mot-strob/index.html
/*
Este fenomeno consiste en girar lentamente la rueda y con pasos generalmente de 60Hz se puede observar que el disco
aparece casi gris , porque cada sector alterna rápidamente entre los tres colores cuya mezcla es gris.

Las demostraciones del movimiento en la pantalla de una computadora , cuando se trata de un movimiento rápido sufren de 
artefactos estroboscópicos. En esta implementacion se demuestra una mezcla de color aditiva.

*/
float rot = 60.0f;

void StroboscopicArtifacts(){
  background(0);
  //permite realizar el efecto de translación
  translate(width/2, height/2);
  //rota segun la frecuencia que se le indique inicialmente
  rotate(frameCount/rot);
  fill(0,255,0);
  
  //Dibuja un arco en la pantalla los parametros son cordenadas x y y , el ancho de la elipse , la altura, el ángulo de comienzo y el ángulo de terminación
  arc(0,0,width*0.8,width*0.8,0,(TWO_PI/3));
  fill(225,0,0); //Establece el color para rellenar cada uno de los arcos
  arc(0,0,width*0.8,width*0.8,(TWO_PI/3),(2*(TWO_PI/3)));
  fill(0,0,255);
  arc(0,0,width*0.8,width*0.8,(2*(TWO_PI/3)), TWO_PI);
}

//Cuando se realiza click las velocidades del disco son cambiadas debido a que se tiene en cuenta las diferentes frecuencias para cada uno de los siguientes casos
void mousePressed() {
  if (rot >= 10.0) 
    rot -= 11.0;
  else if (rot >= 5.0)
    rot -= 1.0;
  else if (rot >= 1.0)
    rot -= 0.3;
  else if (rot >= 0.5)
    rot -= 0.2;
  else
    rot = 60.0;
}