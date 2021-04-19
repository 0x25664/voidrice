import java.util.Scanner;

class Methods {
	static String distance(double interval, double maxs)
	{
		double val = maxs * interval;
		return ("Vehicle will drive up to " + val + " kms in " + interval + " hours");
	}
	static int sum(int x, int y) { return x + y; }
	public static void main(String args[])
	{
		System.out.println(Methods.distance(1, 270));
		System.out.println(sum(5, 3));
		First.displayAddress();
	}
}
class First {
	static void displayAddress()
	{
		System.out.println("Compania ABC");
		System.out.println("str. Columna 140, MD-2004");
		System.out.println("Chisinau, Republica Moldova");
	}
}
class DemoAchitareBrut
{
	public static void main(String args[])
	{
		double ore = 12.0;
		calculareBrut(8);
		calculareBrut(ore);
	}
	static void calculareBrut(double ore)
	{
		final double rataStandard = 13.75;
		double brut = ore * rataStandard;
		System.out.println(brut);
	}
}
