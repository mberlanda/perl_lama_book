#!/usr/bin/perl

=begin
Write a program that prompts for and reads two numbers (on separate lines of
input) and prints out the product of the two numbers multiplied together.
=cut

print "Please enter the first number:\n";
$n1 = <STDIN>;
chomp($n1);

print "Please enter the second number:\n";
$n2 = <STDIN>;
chomp($n2);

$product = $n1 * $n2;
print "The product of $n1 and $n2 is: $product\n";
