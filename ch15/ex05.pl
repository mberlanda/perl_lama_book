#!/usr/bin/perl

=begin
Modify the program from the previous exercise to also report if the number
is odd or even, if the number is prime (you find no divisors other than 1 and the
number itself), and if it is divisible by your favorite number. Again, use only smart
matching.
=cut

use 5.010;
use experimental 'smartmatch';

sub divisors {
  my $number = shift;
  my @divisors = ();
  foreach my $divisor ( 2 .. $number/2 ) {
    push @divisors, $divisor unless $number % $divisor;
  }
  return @divisors;
}

my $favorite = 23;

say "Checking the number <$ARGV[0]>";
given( $ARGV[0] ) {
  when( ! /^\d+$/ ) { say "Not a number!" }
  my @divisors = divisors( $ARGV[0] );

  when( 2 ~~ @divisors ) { # @divisors ~~ 2 returns always empty
    say "$_ is even";
    continue;
  }
  when( !(2 ~~ @divisors) ) { # grep { $_ eq 2 } @divisors
    say "$_ is odd";
    continue;
  }
  when( $favorite ~~ @divisors ) {
    say "$_ is divisible my favorite number";
    continue;
  }
  when( $favorite ) {
    say "$_ is my favorite number";
    continue;
  }

  my @empty;
  when( @divisors ~~ @empty ) { say "Number is prime" }
  default { say "$_ is divisible by @divisors" }
}
