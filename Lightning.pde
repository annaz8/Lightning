int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(300,300);
  background (0);
}
void draw()
{

	int strColor1 = (int)(Math.random()*255);
	int strColor2 = (int)(Math.random()*255);
	int strColor3 = (int)(Math.random()*255);
	stroke(strColor1, strColor2, strColor3);

	if (mousePressed)
	{
		background(0);
		endX = startX + ((int)(Math.random()*20) - 10);
		endY = startY + (int)(Math.random()*10);
		line (startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	if(endY >= 300)
	{
		startX = 150;
		startY = 0;
		endX = 150;
		endY = 0;
	}
	

}

