#!/usr/bin/perl

=begin
Write a program that computes the circumference of a circle with a radius of
12.5. Circumference is 2π times the radius (approximately 2 times 3.141592654).
The answer you get should be about 78.5.
=cut

$pi = 3.141592654;
$radius = 12.5;
$circumference = 2 * $pi * $radius;

print "The circumference of a circle with radius $radius is $circumference \n";
