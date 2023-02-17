#!/usr/bin/env perl

use strict;

use Employee;

my $object = Employee->new( firstName=>"Mohammad", lastName=>"Saleem", age=>32, id=>6, title=>"grunt");

# Get first name which is set using constructor.
my $firstName = $object->firstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->firstName( "Pete" );

# Now get first name set by helper function.
$firstName = $object->firstName();
print "After Setting First Name is : $firstName\n";

print "Exiting 02_employee.pl\n";
