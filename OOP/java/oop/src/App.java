public class App {

    public static void example1() throws Exception {
        Person object = new Person( "Mohammad", "Saleem", 32);

        String firstName = object.getFirstName();

        System.out.println( "Get First Name from constructor : " + firstName + 
                            "\nCalling helper function to set new name");

        object.setFirstName( "Pete" );

        firstName = object.getFirstName();
        System.out.println("After setting, get new First Name is : " + firstName);

        String fullName = object.fullName();
        System.out.println("Full Name is " + fullName);

        System.out.println("Exiting example1");
    }

    public static void example2() throws Exception {
        Employee object = new Employee( "Mohammad", "Saleem", 32, 37, "Programmer");

        String firstName = object.getFirstName();

        System.out.println( "Before Setting First Name is : " + firstName);

        object.setFirstName( "Pete" );

        // Now get first name set by helper function.
        firstName = object.getFirstName();
        System.out.println("After setting, get new First Name is : " + firstName);

        String fullName = object.fullName();
        System.out.println("Full Name is " + fullName);

        System.out.println("Exiting example2");
    }

    public static void main(String[] args) throws Exception {
        example1();
        System.out.print("\n\n");
        example2();
    }
}
