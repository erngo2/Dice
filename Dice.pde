Die bob;
void setup()
{
	textAlign(CENTER, CENTER);
	noLoop();
	size(500, 500);
	bob = new Die(225,225);
}
void draw()
{
	background(0);
	bob.roll();
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, mySize, dot;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		mySize = 50;
		myX = x;
		myY = y;
		dot = (int)(Math.random() * 6) + 1;
	}
	void roll()
	{
		//your code here
		
	}
	void show()
	{
		fill(255);
		rect(myX, myY, mySize, mySize);
		if(dot == 1)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 2)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 3)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 4)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 5)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 6)
		{
			fill(150);
			textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
	}
}
