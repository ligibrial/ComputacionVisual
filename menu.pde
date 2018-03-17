int current = 1; //estado para controlar el menu principal
int illusions = 6; //numero de ilusiones que contendra el programa

void setup(){
  //define ancho y alto de la pantalla
  size(500,500);
  //ciclo correspondiente a motion_induced_blindness para las particulas que se observan. 
  for (int i = 0; i < randomPart.length; i++) {
    randomPart[i] = int(random(100, 500)); 
    //partSize[i] = int(random(5));
    partSize[i] = 8; // tamaño de cada particula correspondiente.
  }
  
}
//menú principal
void draw(){
  pushStyle(); //guarda la configuración del estilo actual
  switch(current) {
    case 1:
      Centellante();
      break;
    case 2:
      clear();
      Hermman();
      break;
      
    case 3:
      clear();
      disco();
      break;
      
    case 4:
      clear(); 
      motion();
      break;
    
    case 5:
      clear();
      //StuartIllusion();
      Stuart();
      break;
      
    case 6:
      clear();
      StroboscopicArtifacts();
      break;
  }

      popStyle(); //restaura la configuración anterior.
}

//El siguiente menu corresponde a la ilusión de movimiento de Disco
public void keyPressed() {
    if (key == ' ')
      current = current < illusions ? current+1 : 1;
    //con la letra b se aumenta el grosor de cada circunferencia
        if( current==3){
        if (key == 'b')
          prueba= prueba+50;
         //con la letra a se disminuye el grosor de cada circunferencia
        if (key == 'a')
          prueba= prueba-50;
        //con w aumenta la velocidad.
        if (key == 'w')
          frames= frames+20;
        //con la letra s disminuye la velocidad
        if (key == 's')
          frames= frames-20; 
         //con la letra d se aumenta la cantidad de circunferencias
         if (key == 'd')
          num= num+1;
         //con la letra e se disminuye la cantida de circunferencias
        if (key == 'e')
          num= num-1;
        }
}








 
  
  