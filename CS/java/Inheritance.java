public class exec
{
	public static void main(String[] args)
	{
		Doctor d1 = new Doctor();
		Doctor d2 = new FamilyDoctor();

		Teacher t1 = new Teacher();
		Teacher t2 = new PhysicsTeacher();

		t1.does();
		t2.does();
	}
}

class Doctor
{
	boolean worksAtHospital;

	void treatPatients()
	{
		// Perform Check up
	}
}

class FamilyDoctor extends Doctor
{
	boolean makesHouseCalls;

	void giveAdvice()
	{
		// give some advice
	}
}

class Teacher
{
	private String designation = "Teacher";
	private String collegeName = "BeginnersBook";
	public String getDesignation() { return designation; }
	protected String getCollegeName() { return collegeName; }
	protected void setDesignation(String designation) { this.designation = designation; }
	protected void setCollegeName(String collegeName) { this.collegeName = collegeName; }
	void does() { System.out.println("Teaches"); }
}
class PhysicsTeacher extends Teacher
{
	String subject = "Physics";
	@Override
	void does() { System.out.println("Teaches Physics"); }
}
