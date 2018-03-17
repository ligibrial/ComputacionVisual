//Implementación desde cero

void Stuart(){
  background(0);
  stroke(255);
  strokeWeight(25);
  //el ciclo dibuja las columnas correspondientes con lineas 
  for(int i=0; i<=500; i+=50){
    line(i,0,i,500);
  }
  
}