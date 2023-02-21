public class App {
    public static void main(String[] args) throws Exception {
        Person object = new Person( "Mohammad", "Saleem", 32);

        String firstName = object.getFirstName();

        System.out.println( "Get First Name from constructor : " + firstName + 
                            "\nCalling helper function to set new name");

        object.setFirstName( "Pete" );

        firstName = object.getFirstName();
        System.out.println("After setting, get new First Name is : " + firstName);

        String fullName = object.fullName();
        System.out.println("Full Name is " + fullName);

        System.out.println("Exiting App.java");
    }
}
