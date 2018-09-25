Die bob = new Die(200,200);
void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	bob.roll();
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieNumber, myX,myY;
	
	Die(int x, int y) 
	{
		dieNumber = 0;
		myX = x;
		myY = y;
	}
	void roll()
	{
		dieNumber = dieNumber + ((int)((Math.random() * 6) + 1));
		
	}
	void show()
	{
		fill(255);
		rect(myX,myY,40,40);
		if (dieNumber == 1)
		{
			fill(0);
			ellipse(myX+20,myY+20,5,5);
		}
		else if (dieNumber == 2)
		{
			fill(0);
			ellipse(myX+ 7,myY+ 7,5,5); 
			ellipse(myX+ 33,myY+ 33,5,5);
		}	
		else if (dieNumber == 3)
		{
			fill(0);
			ellipse(myX+ 7,myY+ 7,5,5); 
			ellipse(myX+ 20,myY+ 20,5,5);
			ellipse(myX+ 33,myY+ 33,5,5);
		}	
		else if (dieNumber == 4)
		{
			int a;
			int b;
			for(b = 15; b <= 25, b =+10)
			{
				for(a = 15; a <= 25, a =+10)
				{
						
				}
			}
		}	
		else if (dieNumber == 5)
		{
			fill(0);
			ellipse(myX+20,myY+20,5,5);
		}
		else if(dieNumber == 6)
		{
			fill(0);
			ellipse(myX+20,myY+20,5,5);
		}
	}			
}