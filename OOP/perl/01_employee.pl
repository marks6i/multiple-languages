#!/usr/bin/env perl

use Person;

$object = new Person( "Mohammad", "Saleem", 32);
# Get first name which is set using constructor.
$firstName = $object->getFirstName();

print "Get First Name from constructor : $firstName\nCalling helper function to set new name\n";

# Now Set first name using helper function.
$object->setFirstName( "Pete" );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "After setting get new First Name is : $firstName\n";

my $fullName = $object->fullName();
print "Full Name is $fullName\n";

print "Exiting 01_employee.pl\n";
