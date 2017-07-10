#!/usr/bin/perl

# $part = substr($string, $initial_position, $length);
my $mineral = substr("Fred J. Flintstone", 8, 5); # gets "Flint"
my $rock = substr "Fred J. Flintstone", 13, 1000; # gets "stone"

my $pebble = substr "Fred J. Flintstone", 13; # gets "stone"
my $out = substr("some very long string", -3, 2); # $out gets "in"

my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye"; # $string is now "Goodbye, world!"

substr($string, -20) =~ s/world/Barney/g;
print $string ."\n";
