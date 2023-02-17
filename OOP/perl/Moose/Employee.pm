#!/usr/bin/env perl

use strict;

package Employee {
   use Moose;

   extends 'Person';

   has 'id'    => ( is => 'rw', isa => 'Int' );
   has 'title' => ( is => 'rw', isa => 'Str' );

   around firstName => sub {
      my $orig = shift;
      my $self = shift;

      return $self->$orig( @_ ) if @_; # setter
      return "The Magnificent " . $self->$orig;
   };
}

1;