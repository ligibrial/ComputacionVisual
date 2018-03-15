//Implementación desde cero caso 2
//Referencia: http://www.opticas.info/articulos/ilusiones-opticas.php

void Hermman(){
  background(0);
  stroke(255);
  strokeWeight(15);
  //el ciclo dibuja las columnas correspondientes con lineas 
  for(int i=36; i<=500; i+=70){
    line(0,i,500,i);
  }
  
  //el ciclo dibuja las columnas correspondientes a las filas
  for(int i=36; i<=500; i+=70){ 
    line(i,0,i,500);
  } 
}