#!/usr/bin/env python

from Employee import Employee

object = Employee( "Mohammad", "Saleem", 32, 37, "Programmer")
# Get first name which is set using constructor.
firstName = object.getFirstName()

print(f"Before Setting First Name is : {firstName}")

# Now Set first name using helper function.
object.setFirstName( "Pete" )

# Now get first name set by helper function.
firstName = object.getFirstName()
print(f"After Setting First Name is : {firstName}")

fullName = object.fullName()
print(f"Full Name is {fullName}")

print("Exiting 02_employee.py")
