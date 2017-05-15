#!/usr/bin/perl -w

=begin
Make a program that prints each line that has a two of the same nonwhitespace
characters next to each other. It should match lines that contain words such as
Mississippi , Bamm-Bamm , or llama .
=cut

while(<>){
  if (/(\w)\g{1}/){
    print;
  }
}
