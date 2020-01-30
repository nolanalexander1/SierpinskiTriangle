int col;
public void setup()
{	
	background(255);
	size(800,800);
	col = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
}
public void draw()
{
	sierpinski(100,700,600);
}
public void mouseDragged()//optional
{
	col = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20){
		fill(255);
		stroke(col);
		triangle((float)x, (float)y, (float)x+(len/2), (float)(y-(len)), (float)x+len, (float)y);
	}else{
		sierpinski(x,y,(len/2));
		sierpinski(x+(len/2),y,(len/2));
		sierpinski(x+(len/4),y-(len/2),(len/2));
	}
}