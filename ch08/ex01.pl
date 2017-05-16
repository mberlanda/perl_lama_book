#!/usr/bin/perl -w

=begin
Using the pattern test program, make a pattern to match the string match . Try
the program with the input string beforematchafter . Does the output show the
three parts of the match in the right order?
echo beforematchafter | perl ex01.pl
Matched: |before<match>before|
=cut

while(<>) {
  chomp;
  if (/match/) {
    print "Matched: |$`<$&>$`|\n";
  } else {
    print "No match: |$_|\n";
  }
}
