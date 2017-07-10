#!/usr/bin/perl

=begin
Write a program to read in a list of numbers and sort them numerically, print-
ing out the resulting list in a right-justified column. Try it out on this sample data
or use the file numbers from the O’Reilly web site (see the Preface):
17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666
=cut

my @numbers;
sub by_number { $a <=> $b }

push @numbers, split while <>;
foreach(sort by_number @numbers){ printf "%20g\n", $_; }
