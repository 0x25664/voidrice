import java.util.Scanner;
import java.util.Arrays;
public class Exe {
	public static Scanner kb = new Scanner(System.in);
	public static void main(String[] args) {
		int x = kb.nextInt();
		Ex1 ex1 = new Ex1(x);
	}
}
class Ex1 {
	Ex1(int x) {
		int y = x+2;
		int z = y+2;
		System.out.print(x+", "+y+", "+z);
	}
}
class Ex2 {
	public static void main(String[] args) {
		int sum = 0;
		int	len = 0;
		for(int i = 1; i < 100; i++)
			if(i%2==0) {
				sum = sum + i;
				len++;
			}
		System.out.println(sum);
		System.out.println(len);
	}
}
class Ex3 {
	static int[] swtch(int vec[]) {
		int lst = vec.length - 1;
		int tmp = vec[0];
		vec[0] = vec[lst];
		vec[lst] = tmp;
		return vec;
	}
	public static void main(String[] args) {
		int vec[] = {-8880, 4, 4, 5, 6, 9, -100};

		int max = vec[0];
		for(int x: vec)
			if(x > max)
				max = x;

		System.out.println(Arrays.toString(vec));
		System.out.println(Arrays.toString(swtch(vec)));
		System.out.println("Max val: " + max);
	}
}
