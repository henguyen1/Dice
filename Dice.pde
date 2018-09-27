void setup()
{	
	noLoop();
	size(800,800);
}
void draw()
{
	for(int y = 0; y < 500; y += 45)
	{
		for(int x = 0; x < 500; x +=45)
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

	}
	void roll()
	{
		dieNumber = dieNumber + ((int)((Math.random() * 6) + 1));
		r = r + (int)((Math.random() * 256));
		g = g + (int)((Math.random() * 256));
		b = b + (int)((Math.random() * 256));
		System.out.println(countDie);
		countDie = 0;
		
		if (dieNumber == 1)
		{
			countDie = countDie + 1;
		}
		else if (dieNumber == 2)
		{
			countDie = countDie + 2;
		}	
		else if (dieNumber == 3)
		{
			countDie = countDie + 3;
		}	
		else if (dieNumber == 4)
		{
			countDie = countDie + 4;
		}	
		else if (dieNumber == 5)
		{
			countDie = countDie + 5;
		}
		else if (dieNumber == 6)
		{
			countDie = countDie + 6;
		}
		text("The die add up to be: " + countDie,600,600);
	}
	void show()
	{
		
		fill(r,g,b);
		rect(myX,myY,40,40);
		if (dieNumber == 1)
		{
			countDie = countDie + 1;
			fill(0);
			ellipse(myX+20,myY+20,5,5);
		}
		else if (dieNumber == 2)
		{
			countDie = countDie + 2;
			fill(0);
			ellipse(myX+ 7,myY+ 7,5,5); 
			ellipse(myX+ 33,myY+ 33,5,5);
		}	
		else if (dieNumber == 3)
		{
			countDie = countDie + 3;
			fill(0);
			ellipse(myX+ 7,myY+ 7,5,5); 
			ellipse(myX+ 20,myY+ 20,5,5);
			ellipse(myX+ 33,myY+ 33,5,5);
		}	
		else if (dieNumber == 4)
		{
			countDie = countDie + 4;
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);	
		}	
		else if (dieNumber == 5)
		{
			countDie = countDie + 5;
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
			ellipse(myX+20,myY+20,5,5);
		}
		else if (dieNumber == 6)
		{
			countDie = countDie + 6;
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
			ellipse(myX+20,myY+10,5,5);
			ellipse(myX+20,myY+30,5,5);
		}
	}			
}