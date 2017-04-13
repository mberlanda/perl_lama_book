#!/usr/bin/perl

=begin
Modify the program from the previous exercise so that, if the user enters a
number less than zero, the reported circumference will be zero, rather than
negative.
=cut

$pi = 3.141592654;
print "Please enter the value of the radius:\n";

$radius = <STDIN>;
chomp($radius);

$valid_radius = ($radius < 0) ? 0 : $radius;

$circumference = 2 * $pi * $valid_radius;
print "The circumference of a circle with radius $radius is $circumference \n";
