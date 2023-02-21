package Employee;

use strict;
use Moose;
use namespace::autoclean;

extends 'Person';

has 'id'    => ( is => 'rw', isa => 'Int' );
has 'title' => ( is => 'rw', isa => 'Str' );

around firstName => sub {
   my $orig = shift;
   my $self = shift;

   return $self->$orig( @_ ) if @_; # setter
   return "The Magnificent " . $self->$orig;
};

__PACKAGE__->meta->make_immutable;

1;

__END__

We can create an object like this:

$object = Employee->new(firstName=>"Mohammad", lastName=>"Saleem", age=>32, id=37, title="Programmer");