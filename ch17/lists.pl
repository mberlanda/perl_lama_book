#!/usr/bin/perl
use strict;


# Picking elements
# my @odd_numbers;
# foreach (1..1000) {
#   push @odd_numbers, $_ if $_ % 2;
# }
my @odd_numbers = grep { $_ % 2 } 1..1000;
# my @matching_lines = grep /\bfred\b/i, <FILE>;

# Transforming items

my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
# my @formatted_data;
# foreach (@data) {
#   push @formatted_data, &big_money($_);
# }
my @formatted_data = map { &big_money($_) } @data;

print "The money numbers are:\n",
  map { sprintf("%25s\n", $_) } @formatted_data;

my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
print "The money numbers are:\n",
  map { sprintf("%25s\n", &big_money($_) ) } @data;

sub big_money {
  my $number = sprintf "%.2f", shift @_;
  1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/; # Add one comma each time through the do-nothing loop
  $number =~ s/^(-?)/$1\$/; # Put the dollar sign in the right place
  $number;
}

print "Some powers of two are:\n",
  map "\t" . ( 2 ** $_ ) . "\n", 0..15;
