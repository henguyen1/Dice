int countDie;
void setup()
{	
	noLoop();
	size(700,700);
}
void draw()
{
	countDie = 0;
	background(255);
	for(int y = 0; y < 600; y += 21)
	{
		for(int x = 0; x < 600; x +=21)
		{
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
			countDie = bob.dieNumber + countDie;
		}	
	}
	text("The sum of die is : "+ countDie,500,700);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieNumber, myX,myY, r, g , b;
	
	Die(int x, int y) 
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		dieNumber = ((int)((Math.random() * 6) + 1));
	}
	void show()
	{	
		
		r = r + (int)((Math.random() * 256));
		g = g + (int)((Math.random() * 256));
		b = b + (int)((Math.random() * 256));
		fill(r,g,b);
		rect(myX,myY,20,20);
		
		if (dieNumber == 1)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
		}
		else if (dieNumber == 2)
		{			
			fill(0);
			ellipse(myX+ 3.5,myY+ 3.5,5,5); 
			ellipse(myX+ 16.5,myY+ 16.5,5,5);
		}	
		else if (dieNumber == 3)
		{		
			fill(0);
			ellipse(myX+ 3.5,myY+ 3.5,5,5); 
			ellipse(myX+ 10,myY+ 10,5,5);
			ellipse(myX+ 16.5,myY+ 16.5,5,5);
		}	
		else if (dieNumber == 4)
		{			
			fill(0);
			ellipse(myX+5,myY+5,5,5);
			ellipse(myX+5,myY+5,5,5);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+15,myY+15,5,5);	
		}	
		else if (dieNumber == 5)
		{		
			fill(0);
			ellipse(myX+5,myY+5,5,5);
			ellipse(myX+5,myY+15,5,5);
			ellipse(myX+15,myY+5,5,5);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+10,myY+10,5,5);
		}
		else if (dieNumber == 6)
		{	
			fill(0);
			ellipse(myX+5,myY+5,5,5);
			ellipse(myX+5,myY+15,5,5);
			ellipse(myX+15,myY+5,5,5);
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+10,myY+5,5,5);
			ellipse(myX+10,myY+15,5,5);
		}
	}			
}