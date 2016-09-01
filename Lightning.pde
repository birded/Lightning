int startX = width/2;
int startY = 0;
int endX = width/2;
int endY = 0;
int bg = 0;

void setup()
{
  size(500,500);
  background(bg);
  strokeWeight(3);
  fill(200,200,200,200);
  noStroke();
  ellipse(50,0,300,80);
  ellipse(200,0,300,120);
  ellipse(500,0,400,130);
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
}

void mousePressed()
{
	background(180);
}

void mouseReleased(){
	background(0);
	fill(200,200,200,200);
	noStroke();
	ellipse(50,0,300,80);
	ellipse(200,0,300,120);
	ellipse(500,0,400,130);
	startX = mouseX;
	startY = 0;
	endX = mouseX;
	endY = 0;

}

