import java.util.Arrays;

public class hw3 {
	static void solve()
	{
		int arr[][] = new int[3][5];
		int arrLen = arr[0].length;
		int a = 10, b = 100, c = 1000;
		for (int i = 0; i < arrLen; i++) {
			arr[0][i] = a; a += 10;
			arr[1][i] = b; b += 100;
			arr[2][i] = c; c += 1000;
		}
		for (int[] arrStr : arr)
			System.out.println(Arrays.toString(arrStr));
	}
	public static void main(String[] args)
	{
		solve();
	}
}
