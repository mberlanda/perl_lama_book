#!/usr/bin/perl

=begin
Make a program that looks through a given string for every occurrence of a
given substring, printing out the positions where the substring is found. For
example, given the input string "This is a test." and the substring "is" , it should
report positions 2 and 5 . If the substring were "a" , it should report 8 . What does it
report if the substring is "t" ?
=cut

print "Please enter a string: ";
chomp(my $string = <STDIN>);
print "Please enter a substring: ";
chomp(my $sub = <STDIN>);

my @places;

for (my $pos = -1; ; ) {
  $pos = index($string, $sub, $pos + 1);
  last if $pos == -1;
  push @places, $pos;
}
print "Locations of '$sub' in '$string' were: @places\n";
