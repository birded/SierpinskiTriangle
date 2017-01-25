int value = 300;

public void setup()
{
	size(800,800);
}
public void draw()
{
	background(110);
	noFill();
	stroke(0,255,0);
	sierpinski(1,799, value);

	if(value <= 20) value = 20;
	if(value >= 800) value = 800;

}
public void mouseDragged()//optional
{
	if(mouseX < pmouseX){
		value-= 10;
	}
	if(mouseX > pmouseX){
		value+=10;

	}
}
public void sierpinski(int x, int y, int len) 
{
	if( len <= 20 ){
		stroke(x,y,(x+y)/4);
		triangle(x,y, x+len/2,y-len, x+len,y);
	}
	else{

		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}

}