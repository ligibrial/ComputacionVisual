//implementación desde cero

boolean active = true;
int xPos=0;
int xDir=1;

private class Square{
    float x;
    float y;
    float r;
    public Square(float x, float y, float r)
    {
        this.x=x;
        this.y=y;
        this.r=r;
    }
    public void drawSquare(){
        beginShape();
        float nx=x;
        float ny=y;
        vertex(nx, ny);
        nx = nx + r;
        vertex(nx, ny);
        ny = ny+r;
        vertex(nx, ny);
        nx=nx-r;
        vertex(nx, ny);
        ny=ny-r;
        vertex(nx, ny);
        endShape(CLOSE);
    }
    public void drawRhombus(){
          float rr=sqrt(2*pow(r,2));
          beginShape();
          float nx=x;
          float ny=y;
          vertex(nx, ny);
          nx = nx+rr;
          ny=ny-rr;
          vertex(nx, ny);
          nx = nx-rr;
          ny = ny-rr;
          vertex(nx, ny);
          nx = nx-rr;
          ny = ny+rr;
          vertex(nx, ny);
          nx = nx+rr;
          ny = ny+rr;
          vertex(nx, ny);
          endShape(CLOSE);
    }
    
    public void println(){
        System.out.println("polygon size: "+r);
    }   
}

void StuartIllusion(){
  
  if(active){
    frameRate(30);
    background(255);
    strokeWeight(11);
    int size = 600/25;
    for(int j = 0;j<=600;j=j+size){
      line(j+10,0,j+10,600);
    }
    strokeWeight(1);
    noStroke();
    fill(255);
      Square square = new Square(xPos,250,50);
    square.drawSquare();
    fill(0);
    Square square2 = new Square(xPos,365,50);
    square2.drawSquare();
    xPos=xPos+xDir;
    if (xPos>width-60 || xPos<0)
    {
      xDir=-xDir;
    }
  }
  else{
    noStroke();
    frameRate(30);
    background(255);
    strokeWeight(1);
    fill(255,255,0);
    Square square = new Square(xPos,250,50);
    square.drawSquare();
    fill(0,0,112);
    Square square2 = new Square(xPos,365,50);
    square2.drawSquare();
    xPos=xPos+xDir;
    if (xPos>width-60 || xPos<0)
    {
      xDir=-xDir;
    }
  }
  
}