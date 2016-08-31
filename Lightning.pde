int startX = width/2;
int startY = 0;
int endX = width/2;
int endY = 0;
int bg = 0;
int thold = 0;

void setup()
{
  size(500,500);
  background(bg);
  strokeWeight(4);
}

void draw()
{
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	while(endY < height){
		endY = startY + (int)(Math.random() * 9);
		endX = startX + (int)(Math.random()* 18) - 9;

		line(startX, startY, endX, endY);

		startX = endX;
		startY = endY;
	}
	filter(BLUR,1);
}

void mousePressed()
{
	background(180);
}

void mouseReleased(){
	background(0);
	startX = mouseX;
	startY = 0;
	endX = mouseX;
	endY = 0;

}

