public class Employee extends Person {
  private int    _id;
  private String _title;

  public Employee(String firstName, String lastName, int age, int id, String title) {
    super(firstName, lastName, age);
    _id    = id;
    _title = title;
  }

  // Override helper function
  @Override
  public String getFirstName() {
    // This is child class function.
    System.out.println("This is child class helper function");
    return "The Amazing " + _firstName;
  }

  // Add more methods
  public String setLastName(String lastName) {
    if (lastName != null && !lastName.isEmpty()) {
      _lastName = lastName;
    }
    return _lastName;
  }

  public String getLastName() {
    return _lastName;
  }
}
