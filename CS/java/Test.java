import java.util.Scanner;
import java.util.Arrays;
/*
 * Eu am pus toate clasele intr-un file
 * Dati compile la file cu javac si daca doriti un ex specific
 * in terminal scrieti `java Ex1` in loc de Ex1 poti scrie clasa dorita
 * Numele Claselor sunt in ordine in care au fost date exercitiile
 */
public class Test {
	public static void main(String args[])
	{
		System.out.println("Test Andrei Ataman");
	}
}
class Ex1 {
	public static void main(String args[])
	{
		System.out.println(-6+(8*6));
		System.out.println((44+8)%5);
		System.out.println(3*2/8+19);
		System.out.println(5+20/3*2-8%4);
	}
}
class Ex2 {
	public static void main(String args[])
	{
		Scanner kb = new Scanner(System.in);
		int x = kb.nextInt();
		int y = kb.nextInt();
		System.out.println(x * y);
	}
}
class Ex3 {
	public static void main(String args)
	{
		Scanner kb = new Scanner(System.in);
		double x = kb.nextDouble();
		double y = kb.nextDouble();
		// Multe s.out dar nai cei face
		System.out.println(x + y);
		System.out.println(x - y);
		System.out.println(y - x);
		System.out.println(x * y);
		System.out.println(x/y);
		System.out.println(y/x);
		System.out.println(x%y);
		System.out.println(y%x);
	}
}
class Ex4 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		int x = kb.nextInt();
		int y = kb.nextInt();
		if (x > y) {
			System.out.println("Bigger number: " + x);
			System.out.println("Smaller number: " + y);
		} else {
			System.out.println("Bigger number: " + y);
			System.out.println("Smaller number: " + x);
		}
	}
}
class Ex5 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Input a password: ");
		String pwd = kb.nextLine();
		System.out.println("Password was: " + pwd);
	}
}
class Ex6 {
	public static void main(String[] args)
	{
		for (int i = 1; i <= 100; i++)
			System.out.println(i);
	}
}
class Ex7 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		int x = kb.nextInt();
		if (x%2 == 0)
			System.out.println(x+" is a even number");
		else
			System.out.println(x+" is a odd number");
	}
}
class Ex8 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.println("Input a hour(1-24)");
		int x = kb.nextInt();
		if (x > 24 || x < 0)
			System.out.println("There are 24 hours in a day, no more and no less");
		else if (x < 12 && x > 6)
			System.out.println("Dimineata");
		else if (x > 12 && x < 18)
			System.out.println("Amiaza");
		else if (x > 18 && x < 23)
			System.out.println("Seara");
		else if (x > 23 || x < 6)
			System.out.println("Seara");
	}
}
class Ex9 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Introduce o luna sau nr ei: ");
		int x = kb.nextInt();
		switch (x)
			{
			case 12:
			case 1:
			case 2:
				System.out.println("Iarna");
				break;
			case 3:
			case 4:
			case 5:
				System.out.println("Primavara");
				break;
			case 6:
			case 7:
			case 8:
				System.out.println("Vara");
				break;
			case 9:
			case 10:
			case 11:
				System.out.println("Toamna");
				break;
			default:
				System.out.println("No season found");
			}
	}
}
class Ex10 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Introduce un string: ");
		String x = kb.nextLine();
		System.out.println(x.toUpperCase());
	}
}
class Ex11 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Introduce un string: ");
		String x = kb.nextLine();
		System.out.println("Last index: " + (x.length() - 1));
		System.out.println("Length: " + x.length());
	}
}
class Ex12 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Introduce o varsta: ");
		int x = kb.nextInt();
		if (x < 0 || x > 135)
			System.out.println("Varsta e mai mica de 0 sau mai mare de 135");
		else if (x > 0 && x < 12)
			System.out.println("Copil");
		else if (x > 12 && x < 18)
			System.out.println("Adolescent");
		else
			System.out.println("Adult");
	}
}
class Ex13 {
	public static void main(String[] args)
	{
		for (int i = 0; i <= 20; i++) {
			if (i > 14)
				break;
			else
				System.out.println(i);
		}
	}
}
class Ex14 {
	public static void main(String[] args)
	{
		for (int i = 0; i < 20; i++)
			if (i != 14)
				System.out.println(i);
	}
}
class Ex15
{public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.println("Introduce 3 nr:");
		int x = kb.nextInt();
		int y = kb.nextInt();
		int z = kb.nextInt();
		int arr[] = new int[3];
		arr[0] = x;
		arr[1] = y;
		arr[2] = z;
		for (int i = 0; i < arr.length; i++)
			for (int j = 0; j < arr.length; j++)
				if (arr[i] < arr[j]) {
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
		System.out.println(Arrays.toString(arr));
		System.out.println("Lista a fost sortata cu algoritmul bubble sort, uitativa in cod");
	}
}
class Ex16 {
	public static void main(String[] args)
	{
		byte arr[] = {1,10,20,15,50,14};
		System.out.println("Byte array: " + Arrays.toString(arr));
		arr[4] = 69;
		System.out.println("Modified Byte array: " + Arrays.toString(arr));
	}
}
class Ex17 {
	public static void main(String[] args)
	{
		int arr[] = {20,13,15,30};
		System.out.println("Array: " + Arrays.toString(arr));
		System.out.println("Element with index 0: " + arr[0]);
		System.out.println("Last index: " + (arr.length - 1) + "\t Last element: " + arr[arr.length - 1]);
	}
}
class Ex18 {
	public static void main(String[] args)
	{
		int arr[] = {1,6,14,52,13};
		System.out.println("Array: " + Arrays.toString(arr));
		int max = arr[0];
		for (int i : arr)
			if (i > max) max = i;
		System.out.println("Biggest Number: " + max);
	}
}
class Ex19 {
	public static void main(String[] args)
	{
		int arr[] = {1,6,14,52,13};
		System.out.println("Array: " + Arrays.toString(arr));
		int min = arr[0];
		for (int i : arr)
			if (i < min) min = i;
		System.out.println("Smallest Number: " + min);
	}
}
class Ex20 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Indtroduce un char(R/G/V): ");
		char x = kb.next().charAt(0);
		if (x == 'R' || x == 'r')
			System.out.println("Rosu");
		else if (x == 'G' || x == 'g')
			System.out.println("Galben");
		else if (x == 'V' || x == 'v')
			System.out.println("Verde");
	}
}
