class exec
{
	public static void main(String[] args)
	{
		// Declare, allocate and initialize objects of class Cutie
		Cutie x = new Cutie(15,12,14);
		// Return the volume of x
		System.out.println("Volume of x: " + x.getVolume());
	}
}
class Cutie
{
	private double length;
	private double height;
	private double depth;

	// Constructor for Cutie with parameters
	Cutie(double length, double height, double depth) { setAll(length, height ,depth); }

	// Setters and Getters
	public double getVolume() { return length*height*depth; }
	public void setLength(double length) { this.length = length; }
	public void setHeight(double height) { this.height = height; }
	public void setDepth(double depth) { this.depth = depth; }

	public void setAll(double length, double height, double depth)
	{
		this.length = length;
		this.height = height;
		this.depth = depth;
	}
}
