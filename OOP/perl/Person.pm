package Person;

use Carp;

sub new {
   my $class = shift;

   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _age       => shift,
   };

   # Print all the values just for clarification.
   print "First Name is $self->{_firstName}\n";
   print "Last Name is $self->{_lastName}\n";
   print "Age is $self->{_age}\n";

   bless $self, $class;
   return $self;
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{_firstName};
}

# In functional programming, objects are immutable, so setter cannot be used
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{_firstName} = $firstName if defined($firstName);
   return $self->{_firstName};
}

sub AUTOLOAD {
   my $self = shift;
   my $type = ref ($self) || croak "$self is not an object\n";
   my $field = $AUTOLOAD;
   $field =~ s/.*://;
   unless (exists $self->{$field}) {
      croak "$field does not exist in object/class $type\n";
   }
   if (@_) {
      return $self->($name) = shift;
   } else {
      return $self->($name);
   }
}

sub fullName {
   my $self = shift;
   return $self->{_firstName} . " " . $self->{_lastName};
}

sub DESTROY {
   print "Person::DESTROY called\n";
}

1;

__END__

We can create an object like this:

$object = new Person( "Mohammad", "Saleem", 32);