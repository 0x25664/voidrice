import java.util.Scanner;

class Enums
{
	public static Scanner kb = new Scanner(System.in);
	public static void main(String[] args)
	{
		Carte book = new Carte("Horodiste", "Ion Druta", 1969, types.ROMAN);

		System.out.print("Introduce tipul cartii dupa nr: ");
		int id = kb.nextInt();

		types type = types.values() [id];
		// `types.ROMAN.ordinal();` to get the index of the `ROMAN` label

		System.out.print("A fost ales tipul: " + type + "\n");
		if (book.type == type)
			System.out.println(book.name + " was chosen");
	}
}
class Carte
{
	String name, author;
	int year;
	types type;

	Carte(String name, String author, int year, types type)
	{
		this.name   = name;
		this.author = author;
		this.year   = year;
		this.type   = type;
	}
}

enum types {
	DRAMA, COMEDIE, ACTIUNE, ROMAN
};
