#!/usr/bin/perl -w

=begin
Write a program that will ask the user for a given name and report the corre-
sponding family name. Use the names of people you know, or (if you spend so
much time on the computer that you don’t know any actual people) use the fol-
lowing table:
Input Output
fred flintstone
barney rubble
wilma flintstone
=cut

my %family_names = (
  "fred" => "flintstone",
  "barney" => "rubble",
  "wilma" => "flintstone"
);

my @names = keys %family_names;
print "Please enter a name (@names):\n";
chomp($name = <STDIN>);
print "The family name of $name is $family_names{$name}.\n";
