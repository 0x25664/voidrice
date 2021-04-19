import java.util.Arrays;
import java.util.Scanner;
public class Array
{
	public static void main(String[] args)
	{
		int arr[] = {1,2,4,5};
		for (int i : arr) System.out.println(i);
	}
}
class MultiArr1
{
	public static void main(String[] args)
	{
		int arr[][] = new int [4][5];
		int i, j, k = 0;
		for (i = 0; i < 4; i++) {
			for (j = 0; j < 5; j++) {
				arr[i][j] = k;
				k++;
			}
		for (i = 0; i < 4; i++)
			for (j = 0; j < 5; j++)
				System.out.println(arr[i][j] + " ");
		}
	}
}
class MultiArr2
{
	public static void main(String[] args)
	{
		String animals[][] = new String[3][5];
		animals[1][2] = "Tigru";
		for (int i = 0; i < animals.length; i++)
			for (int j = 0; j < animals[i].length; j++)
				System.out.println(animals[i][j]);
	}
}
class ArraySort {
	public static void main(String[] args) {
		int arr[] = {1, 6, 4, 2, 5, 4};
		System.out.printf("Array: %s", Arrays.toString(Arrays.sort(arr)));
	}
}
class ArraysOfClasses {
	public static void main(String[] args) {
		Dog[] haita = new Dog[3];
		haita[0] = new Dog();
		haita[0].name = "Ion";
		haita[0].age = 5;
		haita[0].gender = true;
	}
}
class Dog {
	String name;
	int age;
	boolean gender;
}
