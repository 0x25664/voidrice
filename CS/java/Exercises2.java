import java.util.Arrays;
public class Exercises2
{
	public static void main(String[] args)
	{
		String arr[][] = new String[10][10];
		for (int i = 0; i < arr.length; i++)
			for (int j = 0; j < arr.length; j++)
				arr[i][j] = "-";

		for (String[] z : arr)
			System.out.println(Arrays.toString(z));
	}
}
