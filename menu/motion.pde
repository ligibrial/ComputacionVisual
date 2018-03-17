//Caso 4
//Referencias
//http://www.aulamatematica.com/Efectos_opticos/movimiento/mov1.htm
//https://www.openprocessing.org/sketch/488693
//El siguiente codigo fue adaptado para generar el efecto 24 de la primera referencia mencionada.
//Esta ilusión pertenece al grupo de Motion-Induced Blindness(ceguera inducida por el movimiento)
float circleSize = 400;
float radius = circleSize/2;
int period = 5; //speed
float x = 0;
float particleY;
float amplitude;
float sineEl;
float r = 0.;
int randomPart[] = new int[100];//cantidad de particulas random
int partSize[] = new int[100]; //tamaño de la particula



void motion(){
background(0);
  
  x += 0.01;

  for (int yRand = 0; yRand < randomPart.length; yRand++) {

    particleY = randomPart[yRand];

    float sine = sin((2*PI*x)/period + randomPart[yRand]);
    amplitude = sqrt(sq(radius) - sq(abs(height/2 - particleY)));
    sineEl = width/2 + sine * amplitude;

    float particleSize = partSize[yRand];

    //rotation
    pushMatrix();
    translate(width/2, height/2);
    r += 0.005;
    rotate(radians(r));
    translate(-width/2, -height/2);

    stroke(0);
    //line(width/2, 0, width/2, height); //uncomment to see the axis
    noStroke();
    fill(73, 51, 255 );
    ellipse(sineEl, particleY, particleSize, particleSize);
    popMatrix();
  }
  //El siguiente codigo fue puesto en este orden para que el movimiento de translación y rotación quedaran por debajo como se observa en 
  // el documento de referencia.
  stroke(255);
  //tamaño del punto central
  strokeWeight(4);
  //punto central de la pantalla
  
  point(height/2,width/2);
  //color de los puntos
  stroke(241, 196, 15);
  //tamño de los puntos del triangulo
  strokeWeight(8);
  //primer punto 
  point(width/2-75,height/2-40);
  //segundo punto del correspondiente triangulo
  point(width/2+75,height/2-40);
  //tercer punto del correspondiente triangulo
  point(width/2,height/2+80);
  noFill();
  stroke(255);
  //ellipse(width/2, height/2, circleSize, circleSize);
  
  
}