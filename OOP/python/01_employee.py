#!/usr/bin/env python

from Person import Person

object = Person( "Mohammad", "Saleem", 32);
# Get first name which is set using constructor.
firstName = object.getFirstName()

print(f'Get First Name from constructor : {firstName}\nCalling helper function to set new name');

# Now Set first name using helper function.
object.setFirstName( "Pete" )

# Now get first name set by helper function.
firstName = object.getFirstName();
print(f"After setting get new First Name is : {firstName}");

fullName = object.fullName();
print(f"Full Name is {fullName}");

print("Exiting 01_employee.py");
