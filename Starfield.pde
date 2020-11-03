//your code here
Particle[] bob = new Particle[1000];
OddballParticle joe = new OddballParticle();
void setup()
{
  //your code here
   size (400,400);
   for(int i=0;i<bob.length;i++)
  {
    bob[i]=new Particle();   
  }
  bob[0]=new OddballParticle();
}
void draw()
{
  //your code here
  background(256);
  for (int i=0; i<bob.length;i++)
   {
     bob[i].show();
     bob[i].move();     
   }   
}
class Particle
{
  //your code here
  double myX;
  double myY;
  double mySpeed;
  double myAngle;
  int myColor;
  int myXSize;
  int myYSize;
  Particle(){
    myX=200;
    myY=200;
    myAngle=Math.random()*2*Math.PI;
    mySpeed = Math.random()*20;
    myColor=color((int)(Math.random()*256),0,(int)(Math.random()*256));
    myXSize=(int)(Math.random()*20+10);
    myYSize=(int)(Math.random()*20+10);
  }
  void move(){
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((int)myX,(int)myY,myXSize,myYSize);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  OddballParticle()
  {
    myX=0;
    myY=350;
    myAngle=Math.random()*2*Math.PI;
    mySpeed = Math.random()*20;
    myColor=color(51,255,189);
    myXSize=100;
    myYSize=100;
  }
  void move(){
    myX=myX+5;
    myY=myY-5;
  }  
  void show()
  {
    fill(myColor);
    stroke(myColor);
    rect((int)myX,(int)myY,myXSize,myYSize);
  }
}


