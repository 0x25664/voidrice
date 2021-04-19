import java.util.Arrays;
public class sort
{
	public static String magic(int arr[])
	{
		for (int i=0; i < arr.length; i++)
			for (int j=0;j < arr.length; j++)
				if (arr[i] < arr[j])
				{
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
		return Arrays.toString(arr);
	}
	public static void main(String args[])
	{
		int arr[] = {-2,100,99,130,25,1,6};
		System.out.println(Arrays.toString(arr));
		System.out.println(magic(arr));
	}
}
