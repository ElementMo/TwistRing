float rx;
float ry;
float rz = 0;
float AA;
float clr = 255;

void setup() 
{
  fullScreen(P3D);
  frameRate(60);
  colorMode(HSB);
}


void draw() 
{
  background(0);
  noFill();
  strokeWeight(24);
  translate(width/2, height/2, 0);
  rotateX(1.7*sin(radians(millis()/18)));
  rotateY(ry);
  rotateZ(7); //rz = 7;

  for (float i = 0.1; i<=360; i=i+0.20) 
  {
    float A = 1300*sin(radians(millis()/23));
    float x = 250 * sin(radians(i));
    float y = 250 * cos(radians(i));
    float z = 0;
    pushMatrix();
    rotateY(radians((A* sin(-0.009*i))));
    stroke(i/360*clr, 200, 200);
    point(x, y, z);
    popMatrix();
  }
  //saveFrame("####.jpg");
}