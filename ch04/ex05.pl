#!/usr/bin/perl -w

=begin
Modify the previous program to tell each new person the names of all of the
people it has previously greeted:
greet("Fred" );
greet("Barney" );
greet("Wilma" );
greet("Betty" );
This sequence of statements should print:
Hi Fred! You are the first one here!
Hi Barney! I've seen: Fred
Hi Wilma! I've seen: Fred Barney
Hi Betty! I've seen: Fred Barney Wilma
=cut


use strict;
use 5.010;

greet("Fred" );
greet("Barney" );
greet("Wilma" );
greet("Betty" );

sub greet {
  state @last_person;
  my $name = shift;
  print "Hi $name! ";
  if (@last_person) {
    print "I've seen:  @last_person\n";
  } else {
    print "You are the first one here!\n";
  }
  push(@last_person, $name);
}
