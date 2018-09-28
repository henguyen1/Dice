int countDie;
void setup()
{	
	noLoop();
	size(800,800);
}
void draw()
{
	for(int y = 0; y < 700; y += 21)
	{
		for(int x = 0; x < 700; x +=21)
		{
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
		}
			
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieNumber, myX,myY, countDie, r, g , b;
	
	Die(int x, int y) 
	{
		dieNumber = 0;
		myX = x;
		myY = y;
		countDie = 0;
	}
	void roll()
	{
		dieNumber = dieNumber + ((int)((Math.random() * 6) + 1));
		r = r + (int)((Math.random() * 256));
		g = g + (int)((Math.random() * 256));
		b = b + (int)((Math.random() * 256));
		countDie = countDie + dieNumber;
		System.out.println(countDie);
	}
	void show()
	{
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