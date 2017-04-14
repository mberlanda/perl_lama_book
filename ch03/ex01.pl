#!/usr/bin/perl -w

=begin
Write a program that reads a list of strings on separate lines until end-of-input
and prints out the list in reverse order. If the input comes from the keyboard, you’ll
probably need to signal the end of the input by pressing Control-D on Unix, or
Control-Z on Windows.
=cut


print "Enter some lines, then press Ctrl-D:\n";
@lines = <STDIN>;

foreach(reverse(@lines)){
  print;
}
