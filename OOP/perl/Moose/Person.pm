package Person;

use strict;
use Moose;
use namespace::autoclean;

has 'firstName' => ( is => 'rw', isa => 'Str' );
has 'lastName'  => ( is => 'rw', isa => 'Str' );
has 'age'       => ( is => 'ro', isa => 'Int' );

__PACKAGE__->meta->make_immutable;

1;

__END__

We can create an object like this:

$object = Person->new(firstName=>"Mohammad", lastName=>"Saleem", age=>32);