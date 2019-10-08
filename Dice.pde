void setup()
{
	textAlign(CENTER, CENTER);
	noLoop();
	size(500, 500);
}

int sum = 0;

void draw()
{
	background(192);
	for(int a = 45; a < 450; a += 60)
	{
		for(int b = 45; b < 450; b += 60)
		{
			Die bob = new Die(a, b);
			bob.roll();
			bob.show();
			sum += bob.dot;
		}
	}
	textAlign(CENTER, CENTER);
	text("The sum of all your rolls is " + sum + ".", 250, 470);
	text("This number is cumulative from previous rolls, right click to restart the counter.", 260, 490);
}
void mousePressed()
{
	redraw();
	if(mouseButton == RIGHT)
		sum = 0;
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
	}
	void roll()
	{
		dot = (int)(Math.random() * 6) + 1;
		
	}
	void show()
	{
		fill(255);
		stroke(0);
		rect(myX, myY, mySize, mySize);
		if(dot == 1)
		{
			fill(0);
						textAlign(CENTER, CENTER);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(dot == 2)
		{
			fill(0);
			textAlign(CENTER, CENTER);
			ellipse(myX + 11, myY + 11, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
			
		}
		if(dot == 3)
		{
			fill(0);
			textAlign(CENTER, CENTER);
			ellipse(myX + 11, myY + 11, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
		}
		if(dot == 4)
		{
			fill(0);
			textAlign(CENTER, CENTER);
			ellipse(myX + 11, myY + 11, 10, 10);
			ellipse(myX + 11, myY + 39, 10, 10);
			ellipse(myX + 39, myY + 11, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
		}
		if(dot == 5)
		{
			fill(0);
			textAlign(CENTER, CENTER);
			ellipse(myX + 11, myY + 11, 10, 10);
			ellipse(myX + 11, myY + 39, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 39, myY + 11, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
		}
		if(dot == 6)
		{
			fill(0);
			textAlign(CENTER, CENTER);
			ellipse(myX + 11, myY + 11, 10, 10);
			ellipse(myX + 11, myY + 25, 10, 10);
			ellipse(myX + 11, myY + 39, 10, 10);
			ellipse(myX + 39, myY + 11, 10, 10);
			ellipse(myX + 39, myY + 25, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
		}
	}
}

