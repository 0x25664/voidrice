import java.util.Arrays;
/*
 * public - acesibil pentru tot
 * private - doar acesibil in cadrul clasei
 * default - acesibil in interiourul pachetului
 * protected - acesibili in interiourul pachetului si in clase mostenite
 */
class exec
{
	public static void main(String[] args)
	{
		Circle obj = new Circle(30,"blue");
		System.out.println(obj.getRadius());
		System.out.println(obj.getColor());
		System.out.println(obj.getArea());
	}
}
public class Circle
{
	private double radius;
	private String color;

	public Circle(double r, String x)
	{
		radius = r;
		color  = x;
	}
	public double getRadius() { return radius; }
	public String getColor() { return color; }
	public double getArea() { return radius*radius*Math.PI; }
}
