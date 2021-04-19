import java.util.Scanner;
import java.util.Arrays;

class Student {
	String name;
	int marks[];
	Scanner bk = new Scanner(System.in);

	Student(String n) { name = n; }

	double checkMedian(int a, int b, int c, int d) { return (a+b+c+d)/4; }
	void addMarks()
	{
		System.out.println("---------------------------");
		System.out.println("Introduce Notele");

		System.out.print("Istoria: ");
		int history = bk.nextInt();

		System.out.print("Chimie: ");
		int chemistry = bk.nextInt();

		System.out.print("Mate: ");
		int maths = bk.nextInt();

		System.out.print("Biologie: ");
		int biology = bk.nextInt();

		double medie = checkMedian(history, chemistry, maths, biology);

		System.out.println("---------------------------");
		System.out.println("Vrei sa vezi Media?(Y/N)");

		String confirmation = bk.next().trim();

		if (confirmation.equals("y") || confirmation.equals("Y"))
			System.out.println("Media este " + medie);
		else
			System.exit(0);

		if(medie > 9.20) {
			System.out.println("Vrei sa aplici la bursa?(Y/N)");
			String bursa = bk.next().trim();

			if(bursa.equals("y") || bursa.equals("Y"))
				System.out.println("Bursa va fi aplicata");
			else
				System.out.println("Banii Au fost transferati la fondul universitatii");
		}
	}

	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		String names[] = new String[3];
		Student students[] = new Student[3];

		for(int i=1; i<=3; i++) {
			System.out.print("Student"+i+": ");
			names[i-1] = kb.nextLine();
		}
		int i = 0;
		for(String name : names) {
			students[i] = new Student(name);
			i++;
		}

		System.out.println("---------------------------");
		System.out.println("Choose a student " + Arrays.toString(names));
		System.out.print("From 1-3: ");

		int x = kb.nextInt();

		switch(x) {
		case 1:
			System.out.println(students[0].name + " a fost ales");
			students[0].addMarks();
			break;
		case 2:
			System.out.println(students[1].name + " a fost ales");
			students[1].addMarks();
			break;
		case 3:
			System.out.println(students[2].name + " a fost ales");
			students[2].addMarks();
			break;
		}
	}
}
