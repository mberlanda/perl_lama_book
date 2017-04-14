#!/usr/bin/perl

=begin
Write a program that reads a list of strings (on separate lines) until end-of-input.
Then it should print the strings in ASCIIbetical order. That is, if you enter the
strings fred , barney , wilma , betty , the output should show barney betty fred
wilma . Are all of the strings on one line in the output or on separate lines? Could
you make the output appear in either style?
=cut

sub defineSeparator{
  print "Would you like to see the output on separated lines?(Y/n)\n";
  my $answer = <STDIN>;
  chomp($answer);
  return "\L$answer" eq "n" ? " " : "\n";
}

$sep = defineSeparator();

print "Enter some strings, then press Ctrl-D:\n";
chomp(@lines = <STDIN>);
foreach(sort(@lines)){
  print $_ . $sep;
}
