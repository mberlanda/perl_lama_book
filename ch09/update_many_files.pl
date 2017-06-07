#!/usr/bin/perl -w

use strict;

chomp(my $date = `date`);
$^I = ".bak";

while (<>) {
  s/^Author:.*/Author: Randal L. Schwartz/;
  s/^Phone:.*\n//;
  s/^Date:.*/Date: $date/;
  print;
}

# $ perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat
