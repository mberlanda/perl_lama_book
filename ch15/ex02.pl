#!/usr/bin/perl

=begin
Write a program using given-when that takes a number as its input, then prints
“Fizz” if it is divisible by three, “Bin” if it is divisible by five, and “Sausage” if it is
divisible by seven. For a number like 15, it should print “Fizz” and “Bin” since 15
is divisible by both 3 and 5. What’s the first number for which your program prints
“Fizz Bin Sausage”?
=cut

use 5.010;
use strict;

# say "Please enter a number: ";
# chomp(my $number = <STDIN>);

for(1..105){
  my @what = ();
  given($_){
    when(!/^\d+$/) { say "Not a number"; }
    when(not $_ %3) { push(@what, "Fizz"); continue; }
    when(not $_ %5) { push(@what, "Bin"); continue; }
    when(not $_ %7) { push(@what, "Sausage"); }
  }

  say "$_ : " . join(' ', @what);
}
