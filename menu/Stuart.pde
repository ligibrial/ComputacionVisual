//Implementación desde cero
//Referencia: https://magnet.xataka.com/ciencia/13-ilusiones-visuales-que-haran-que-tu-cabeza-explote

int xblanco = 0;
int xnegro = 0;

void Stuart(){
  background(0);
  stroke(255);
  strokeWeight(25);
  //el ciclo dibuja las columnas correspondientes con lineas 
  for(int i=0; i<=500; i+=50){
    line(i,0,i,500);
  }
  //se pinta el rectangulo blanco
  rect(xblanco, height/3, 75, 25 );
  //se pinta el rectangulo negro
  stroke(0);
  rect(xnegro, 2*height/3, 75, 25 );
  
  //se realiza el desplazamiento de los rectangulos
  if(xblanco < height){
    xblanco += 1;
    xnegro += 1;
  }
  //si se llega al final los rectagulos vuelven al comienzo
  else {
    xblanco = 0;
    xnegro = 0;
  }
}