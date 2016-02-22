private double fractionLength = .8; 
private int smallestBranch = 9; 
private double branchAngle = .2; 
//
	double angle1;
	double angle2;
	
 
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0); 

	line(320,480,320,380);
	//fill((int)(Math.random() * 255), 197, (int)(Math.random() * 255));
	drawBranches(320, 380, 115,  3* Math.PI/2);

	//drawBranches(??,??,??,??);  //will add later 
} 
public void mousePressed() 
{
	
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{  
	
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength * Math.cos(angle1) + x);
	int endY1 = (int)(branchLength * Math.sin(angle1) + y);
	int endX2 = (int)(branchLength * Math.cos(angle2) + x);
	int endY2 = (int)(branchLength * Math.sin(angle2) + y);

	stroke((int)(Math.random() * 255), 197, (int)(Math.random() * 255));
	line(x, y, endX1, endY1);
	
	
	line(x, y, endX2, endY2);
	
	if(branchLength > smallestBranch)
	{
		drawBranches(endX1, endY1, branchLength, angle2);
		drawBranches(endX2, endY2, branchLength, angle2);

	} 

	
} 
