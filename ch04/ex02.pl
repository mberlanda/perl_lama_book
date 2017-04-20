#!/usr/bin/perl -w

=begin
Using the subroutine from the previous problem, make a program to calculate
the sum of the numbers from 1 to 1000.
=cut

use strict;
use warnings;
use List::Util qw(sum);

my $result = sum(1..1000);
print "The sum of the first 1000 numbers is: $result \n";

