class Interface {
	public static void main(String[] args)
	{
		Pig pig = new Pig();
		pig.eat();
		pig.breathe();
	}
}

interface Animal {
	public void eat();
	public void sleep();
	public void animalSound();
}

interface Entity {
	public void breathe();
}
class Pig implements Animal, Entity {
	public void eat()
	{
		System.out.println("Pig is eating");
	}
	public void sleep()
	{
		System.out.println("Pig is sleeping");
	}
	public void animalSound()
	{
		System.out.println("Pig is making sound");
	}
	public void breathe()
	{
		System.out.println("Pig is breathing");
	}
}
