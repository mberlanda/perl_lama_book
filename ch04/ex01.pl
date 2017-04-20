#!/usr/bin/perl -w

=begin
Write a subroutine, named total , that returns the total of a list of numbers.
(Hint: the subroutine should not perform any I/O; it should simply process its
parameters and return a value to its caller.) Try it out in this sample program, which
merely exercises the subroutine to see that it works. The first group of numbers
should add up to 25.
=cut

use strict;
use warnings;
use List::Util qw(sum reduce);

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines:\n";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

sub total_foreach {
  my $sum = 0;
  foreach(@_){
    $sum + $_;
  }
  $sum;
}

sub total_reduce {
  reduce {$a + $b} @_;
}

sub total {
  sum(@_);
}
