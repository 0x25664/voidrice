import java.util.Scanner;
class ATM
{
	private String lang;
	private String pswd;
	private double sold;
	private byte   id;

	ATM(String l, String p, byte i, double s)
	{
		lang = l;
		pswd = p;
		id   = i;
		sold = s;
	}

	void checkIdentity()
	{
		if(pswd.equals("ion") && id.equals(69))
			System.out.println("User succesfuly logged in");
		else
			System.exit(0);
	}
	double getSold() { return sold; }
	void setSold(int newS) { sold = newS; }
}
