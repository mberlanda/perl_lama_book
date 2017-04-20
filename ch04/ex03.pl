#!/usr/bin/perl -w

=begin
Extra credit exercise: write a subroutine, called &above_average , that takes a
list of numbers and returns the ones that are above the average (mean). (Hint: make
another subroutine that calculates the average by dividing the total by the number
of items.) Try your subroutine in this test program.
=cut

use strict;
use warnings;
use List::Util qw(sum);

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";


sub average {
  if (@_ == 0) { return }
  my $size = @_;
  sum(@_) / $size;
}

sub above_average {
  my $avg = average(@_);
  my @result = ();
  foreach(@_) {
    if ($_ > $avg) { push(@result, $_); }
  }
  @result;
}
