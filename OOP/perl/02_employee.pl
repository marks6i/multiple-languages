#!/usr/bin/env perl

use strict;

use Employee;

my $object = new Employee( "Mohammad", "Saleem", 32);
# Get first name which is set using constructor.
my $firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Pete" );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "After Setting First Name is : $firstName\n";

my $fullName = $object->fullName();
print "Full Name is $fullName\n";

print "Exiting 02_employee.pl\n";
