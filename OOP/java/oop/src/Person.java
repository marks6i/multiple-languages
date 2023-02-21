public class Person {
  protected String _firstName;
  protected String _lastName;
  protected int    _age;

  public Person(String firstName, String lastName, int age) {
    _firstName = firstName;
    _lastName = lastName;
    _age = age;
  }

  public String getFirstName() {
    return _firstName;
  }

  public String setFirstName(String firstName) {
    _firstName = firstName;
    return _firstName;
  }

  public String fullName() {
    return _firstName + " " + _lastName;
  }
}
