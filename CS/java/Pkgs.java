package mypack;

public class Exec {
	public static void main(String[] args)
	{
		Balance curr[] = new Balance[3];
		curr[0] = new Balance("Ion", -15);
		curr[1] = new Balance("Andrei", 132);
		curr[2] = new Balance("Sorin", 67);

		for(int i = 0; i <= 2; i++)
			curr[i].Show();
		ArrayEx();
	}

	static void ArrayEx()
	{
		int arr[] = {10,20,30,40,50};
		System.out.print("Original List: ");
		for (int x : arr)
			System.out.print(x + " ");
		System.out.print("\nReversed List: ");
		for (int i = arr.length - 1; i >=0 ; i--) {
			System.out.print(arr[i] + " ");
		}
	}
}

class Balance {
	String name;
	double bal;

	Balance(String name, double bal)
	{
		this.name = name;
		this.bal  = bal;
	}

	void Show()
	{
		if(bal<0)
			System.out.println(name.concat(" is broke"));
		System.out.println(name + ": " + bal + "$");
	}
}
