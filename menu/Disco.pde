//Adaptación de la siguiente ilusión https://www.openprocessing.org/sketch/175509 Caso 3

int num=12, frames = 90;
float theta;
int prueba=0;

void disco(){
  {
  background(20);
  stroke(240);
  noFill(); 
  
  // el ciclo va hasta el numero de circunferencias que se encuentran alrededor de el
  for (int i=0; i<num; i++) {
    float sz = i*35;
    float sw = map(sin(theta+TWO_PI/num*prueba), -1, 1, 1, 16);
    //establece en trazo del ancho utilizando lineas, los anchos se establecen en unidades de pixeles
    strokeWeight(sw);
    ellipse(width/2, height/2, sz, sz);
  }
  
  theta += TWO_PI/frames;
  
  }

}