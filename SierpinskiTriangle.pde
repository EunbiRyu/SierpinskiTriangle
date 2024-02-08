public void setup()
{
  size(600, 600);
  background(#48C9D8);
}
public void draw()
{
  sierpinski(50,130,400,0);
}
public void mouseDragged()//optional
{
  sierpinski(50,130,mouseX,0);
  sierpinski(mouseX,mouseY,mouseX,0);
  sierpinski((mouseY/2)-mouseX,mouseY,mouseX,0);
}
public void mousePressed()//optional
{
  int x = int(random(0, 600));
  int y = int(random(0, 600));
  int len = int(random(0, 600));
  sierpinski(x,y,len, int(random(1,255)));

  
}
public void sierpinski(int x, int y, int len, int fillColor) 
{
  if(len <= 20){
  //Draw a triangle with the left corner at (x,y) and a base and height equal to len.
    if(fillColor == 0){
      fill(random(1,255), random(1,255), random(1,255));
    } else {
      fill(#FFCB8B);
    }
    triangle(x, y, (x+(len/2)), y+len, x+len, y);
  } else {
    sierpinski(x,y,(len/2),fillColor);
    sierpinski((x+(len/2)),y,(len/2),fillColor);
    sierpinski((x+(len/4)),(y+(len/2)),(len/2),fillColor);
  }
}
