public void setup()
{
  size(600, 600);
  background(#48C9D8);
}
public void draw()
{
  sierpinski(50,130,400);
}
public void mouseDragged()//optional
{
  sierpinski(50,130,mouseX);
  sierpinski(mouseX,mouseY,mouseX);
  sierpinski((mouseY/2)-mouseX,mouseY,mouseX);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
  //Draw a triangle with the left corner at (x,y) and a base and height equal to len.
    fill(#FFCB8B);
    triangle(x, y, (x+(len/2)), y+len, x+len, y);
  } else {
    sierpinski(x,y,(len/2));
    sierpinski((x+(len/2)),y,(len/2));
    sierpinski((x+(len/4)),(y+(len/2)),(len/2));
  }
}
