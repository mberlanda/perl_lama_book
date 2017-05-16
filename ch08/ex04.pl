#!/usr/bin/perl

=begin
Modify the program from the previous exercise to use named captures instead
of relying on $1 . Update the code to display that label name, something like 'word'
contains 'Wilma' .
=cut

while(<STDIN>) {
  chomp;
  if (/(?<word>\b\w*a\b)/) {
    print "Matched: |$`<$&>$`|\n";
    print "\$1 contains '$+{word}'\n";
  } else {
    print "No match: |$_|\n";
  }
}
