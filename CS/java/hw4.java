import java.util.Scanner;
/*
 * Dati compile la file si clasele ce
 * reprezinta exercitiile sunt Ex1 si Ex2
 * dati run cu `java Ex1` sau `java Ex2`
 */
class Person {
	int    age;
	String name;
	String surname;

	Person(int age, String name, String surname)
	{
		this.age     = age;
		this.name    = name;
		this.surname = surname;
	}
	void getInfo()
	{
		System.out.println("Age: " + age);
		System.out.println("Name: " + name);
		System.out.println("Surname: " + surname);
	}
}

class Ex1 {
	public static void main(String[] args)
	{
		Person ion = new Person(35, "Ion", "Ciubotaru");
		ion.getInfo();
	}
}

class Ex2 {
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		char x = kb.nextLine().charAt(0);
		System.out.println("Intrare in Program");
		System.out.println("Continuare yes or no(Y/N)");
		if (x.equals('Y')) {
			Cl1.salute();
			Cl2.salute();
			Cl3.salute();
		} else {
			System.out.println("Iesire din program");
			System.exit(0);
		}
	}
}

class Cl1 {
	static void salute() { System.out.println("Class 1 was imported"); }
}

class Cl2 {
	static void salute() { System.out.println("Class 2 was imported"); }
}

class Cl3 {
	static void salute() { System.out.println("Class 3 was imported"); }
}
