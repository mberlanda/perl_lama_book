#!/usr/bin/perl -w

=begin
Write a program to list all of the keys and values in %ENV . Print the results in
two columns in ASCIIbetical order. For extra credit, arrange the output to vertically
align both columns. The length function can help you figure out how wide to make
the first column. Once you get the program running, try setting some new envi-
ronment variables and ensuring that they show up in your output.
=cut

use warnings;

my ($longest_key, $key_length);
$longest_key = 0;

foreach my $key ( keys %ENV ) {
  $key_length = length( $key );
  $longest_key = $key_length if $key_length > $longest_key;
}

foreach my $key ( sort keys %ENV ) {
  printf "%-${longest_key}s %s\n", $key, $ENV{$key};
}
