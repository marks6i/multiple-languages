#!/usr/bin/env perl

use strict;

use Person;

my $object = Person->new( firstName=>"Mohammad", lastName=>"Saleem", age=>32);
# Get first name which is set using constructor.
my $firstName = $object->firstName;

print "Get First Name from constructor : $firstName\nCalling setter to set new name\n";

# Now Set first name using helper function.
$object->firstName( "Pete" );

# Now get first name set by helper function.
$firstName = $object->firstName;
print "After setting get new First Name is : $firstName\n";

my $age = $object->age;

print "Get Age from constructor : $age\nCalling setter to set new age...\n...it should fail since attribute is RO\n";

# Now Set first name using helper function.
eval { $object->age( $age++ ) };
print "$@\n" if $@;

print "Exiting 01_employee.pl\n";
