#!/usr/bin/perl

=begin
Modify the program from the previous exercise so that the word ending with
the letter a is captured into memory $1 . Update the code to display that variable’s
contents in single quotes, something like $1 contains 'Wilma'.
=cut

while(<STDIN>) {
  chomp;
  if (/\b(\w*a)\b/) {
    print "Matched: |$`<$&>$`|\n";
    print "\$1 contains '$1'\n";
  } else {
    print "No match: |$_|\n";
  }
}
