#!/usr/bin/perl -w

=begin
Write a subroutine, named greet , that welcomes the person you name by
telling them the name of the last person it greeted:

This sequence of statements should print:
Hi Fred! You are the first one here!
Hi Barney! Fred is also here!
=cut

use strict;
use 5.010;

greet( "Fred" );
greet( "Barney" );

sub greet {
  state $last_person;
  my $name = shift;
  print "Hi $name! ";
  if (defined $last_person) {
    print "$last_person is also here!\n";
  } else {
    print "You are the first one here!\n";
  }
  $last_person = $name;
}

