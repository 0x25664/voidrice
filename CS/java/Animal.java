class Doctor {
	static void treatAnimal(Animal x)
	{
		x.eat();
		x.makeNoise();
		x.sleep();
	}
	public static void main(String[] args)
	{
		Dog dog = new Dog("Dry Kibble", "MD");
		treatAnimal(dog);
	}
}

class Animal {
	String food;
	String location;

	void makeNoise() { System.out.println("Animal is making noise"); }
	void eat() { System.out.println("Animal is eating"); }
	void sleep() { System.out.println("Animal is sleeping"); }
}

class Dog extends Animal {
	Dog(String food, String location)
	{
		this.food = food;
		this.location = location;
	}
	@Override
	void makeNoise() { System.out.println("Dog is making noise"); }
	@Override
	void eat() { System.out.println("Dog is eating"); }
	@Override
	void sleep() { System.out.println("Dog is sleeping"); }
}

class Cat extends Animal {
	Cat(String food, String location)
	{
		this.food = food;
		this.location = location;
	}
	@Override
	void makeNoise() { System.out.println("Cat is making noise"); }
	@Override
	void eat() { System.out.println("Cat is eating"); }
	@Override
	void sleep() { System.out.println("Cat is sleeping"); }
}

class Horse extends Animal {
	Horse(String food, String location)
	{
		this.food = food;
		this.location = location;
	}
	@Override
	void makeNoise() { System.out.println("Horse is making noise"); }
	@Override
	void eat() { System.out.println("Horse is eating"); }
	@Override
	void sleep() { System.out.println("Horse is sleeping"); }
}
