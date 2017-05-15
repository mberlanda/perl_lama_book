#!/usr/bin/perl -w

=begin
Make a program that prints each line that has a word that is capitalized but not
ALL capitalized. Does it match Fred but neither fred nor FRED ?
=cut

while (<>){
  if (/[A-Z][a-z]+/){
    print;
  }
}
