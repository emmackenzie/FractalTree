private double fractionLength = .85; 
private int smallestBranch = 9; 
private double branchAngle = .27; // Math.random();  //.27
public void setup() 
{   
	size(640,480);    
	noLoop();  
} 
public void draw() 
{   
	background(153,153,255);   
	stroke(127,0,255);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2); 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle  + 1.3*branchAngle;
	double angle2 = angle - 1.8*branchAngle;
	double angle3 = angle - .3*branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x); 
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	branchLength = branchLength*fractionLength;

	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	line(x,y, endX3, endY3);
  
  	if(branchLength<smallestBranch)

		ellipse(-10,0,10,10);

  	else 
		{
		
  		drawBranches(endX1, endY1, branchLength*fractionLength, angle1);
  		drawBranches(endX2, endY2, branchLength*fractionLength, angle2);
  		drawBranches(endX3, endY3, branchLength*fractionLength, angle3);

		}
} 

