import java.util.Arrays;
import java.util.Scanner;
class Ex1 {
	public static void main(String[] args)
	{
		int arr[] = new int[5];
		for (int i = 0; i < arr.length; i++)
			arr[i] = i * 10;
		for (int i = 0; i < arr.length; i++)
			System.out.println(arr[i]);
	}
}
class Ex2 {
	public static void main(String[] args)
	{
		int arr[] = {23, 6, 47, 35, 2, 14};
		int x = 0;
		for (int i : arr)
			x = x + i;
		System.out.println(x);
		System.out.print(x/arr.length);
	}
}
class Ex3 {
	public static void main(String[] args)
	{
		int arr[] = {2,5,6,1,3};
		System.out.println("Min: " + min(arr));
		System.out.println("Max: " + max(arr));
	}
	public static int min(int[] arr)
	{
		int x = arr[0];
		for (int i = 0; i < arr.length; i++)
			if (x > arr[i]) x = arr[i];
		return x;
	}
	public static int max(int[] arr) {
		int x = arr[0];
		for (int i = 0; i < arr.length; i++)
			if (x < arr[i]) x = arr[i];
		return x;
	}
}
class Ex4And5 {
	public static void main(String[] args)
	{
		int arr[] = {1,2,3,13,5,6,7};
		System.out.println(Arrays.toString(arr));
		System.out.println(max(arr));
		arr[4] = 69;
		System.out.println(Arrays.toString(arr));
		System.out.println(max(arr));
	}
	public static int max(int arr[])
	{
		int x = arr[0];
		for (int i = 0; i < arr.length; i++)
			if (x < arr[i]) x = arr[i];
		return x;
	}
}
class Ex6 {
	public static void main(String[] args)
	{
		Scanner ion = new Scanner(System.in);
		int arr[] = new int[5];
		System.out.println("Introduce 5 numere:");

		for (int i = 0; i < arr.length; i++)
			arr[i] = ion.nextInt();
		System.out.println(Arrays.toString(arr));
		System.out.print("Do you want to continue? (y/n): ");
		char confirmation = ion.next().charAt(0);

		if (confirmation == 'y') {
			System.out.println("Introduce 5 numere:");
			for (int i = 0; i < arr.length; i++)
				arr[i] = ion.nextInt();
			System.out.println(Arrays.toString(arr));
		} else {
			System.exit(0);
		}
	}
}
class deposit {
	void fructe() { System.out.println("Fructele au fost aduse"); }
	void legume() { System.out.println("Legumele au fost aduse"); }
	void tigari() { System.out.println("Tigarile au fost aduse"); }
}
class magazin {
	public static void main(String[] args)
	{
		deposit depositA = new deposit();
		depositA.fructe();
		depositA.legume();
		depositA.tigari();
	}
}
