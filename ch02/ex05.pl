#!/usr/bin/perl

=begin
Write a program that prompts for and reads a string and a number (on separate
lines of input) and prints out the string the number of times indicated by the num-
ber on separate lines. (Hint: use the x operator.) If the user enters “fred” and “3”,
the output should be three lines, each saying “fred”. If the user enters “fred” and
“299792”, there may be a lot of output.
=cut

print "Please enter the string you want to repeat:\n";
$string = <STDIN>;
chomp($string);

print "Please enter the number of times you want to repeat it:\n";
$n = <STDIN>;
chomp($n);

while ($n > 0){
  print $string . "\n";
  $n -= 1;
}
