#!/usr/bin/perl -w

=begin
Make a program that prints each line of its input that contains a period ( . ),
ignoring other lines of input. Try it on the small text file from the previous exercise:
does it notice Mr. Slate ?
=cut

while (<>){
  if (/\./){
    print;
  }
}
