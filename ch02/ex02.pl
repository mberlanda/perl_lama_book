#!/usr/bin/perl

=begin
Modify the program from the previous exercise to prompt for and accept a
radius from the person running the program. So, if the user enters 12.5 for the
radius, she should get the same number as in the previous exercise
=cut

$pi = 3.141592654;
print "Please enter the value of the radius:\n";

$radius = <STDIN>;
chomp($radius);

$circumference = 2 * $pi * $radius;
print "The circumference of a circle with radius $radius is $circumference \n";
