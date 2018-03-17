
// Implementación desde cero caso 1
// Referencia: http://www.opticas.info/articulos/ilusiones-opticas.php

void Centellante(){
  background(0);
  stroke(200,200,200);
  strokeWeight(5);
  
  //el siguiente ciclo corresponde al dibujo de cada uno de las columnas correspondientes a ilusión óptica
  
  for(int i=10; i<=500; i+=25){
    line(0,i,500,i);
  }
  
  //el siguiente ciclo corresponde al dibujo de cada uno de las filas de la correspondiente ilusion óptica
  for(int i=10; i<=500; i+=25){ 
    stroke(200,200,200);
    strokeWeight(5);
    line(i,0,i,500);
    
    //el siguiente ciclo dibuja los puntos que se encuentran en cada una de las esquinas del cuadrado
    for(int j=10; j<=500; j+=25){
      stroke(255,255,255);
      strokeWeight(10);
      point(i,j);
    } 
  }
}
 