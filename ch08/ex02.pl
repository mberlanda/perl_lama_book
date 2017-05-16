#!/usr/bin/perl -w

=begin
Using the pattern test program, make a pattern that matches if any word (in
the \w sense of word) ends with the letter a . Does it match wilma but not barney ?
Does it match Mrs. Wilma Flintstone ? What about wilma&fred ? Try it on the sample
text file from the previous chapter’s exercises (and add these test strings if they
weren’t already in there).
=cut

while(<>) {
  chomp;
  if (/\b\w*a\b/) {
    print "Matched: |$`<$&>$`|\n";
  } else {
    print "No match: |$_|\n";
  }
}
