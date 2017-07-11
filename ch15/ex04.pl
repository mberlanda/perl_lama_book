#!/usr/bin/perl

=begin
Using given and smart matching, write a program that reports all the divisors
(except 1 and the number itself) of a number you specify on the command line.
For instance, for the number 99, your program should report that it is divisible by
3, 9, 11, and 33. If the number is prime (it has no divisors), it should report that
the number is prime instead. If the command-line argument is not a number, it
should report the error and not try to compute the divisors. Although you could
do this with if constructs and with dumb matching, use only smart matching.
To get you started, here’s a subroutine to return a list of divisors. It tries all of the
numbers up to one-half of $number :
sub divisors {
my $number = shift;
my @divisors = ();
foreach my $divisor ( 2 .. $number/2 ) ) {
push @divisors, $divisor unless $_ % $divisor;
}
return @divisors;
}
=cut

use 5.010;

sub divisors {
  my $number = shift;
  my @divisors = ();
  foreach my $divisor ( 2 .. $number/2 ) {
    push @divisors, $divisor unless $_ % $divisor;
  }
  return @divisors;
}

say "Checking the number <$ARGV[0]>";
given( $ARGV[0] ) {
  when( ! /^\d+$/ ) { say "Not a number!" }
  my @divisors = divisors( $_ );
  my @empty;
  when( @divisors ~~ @empty ) { say "Number is prime" }
  default { say "$_ is divisible by @divisors" }
}
