#!/usr/bin/perl

=begin
Make a program that uses stacked file test operators to list all files named on
the command line that are owned by you, readable, and writable.
=cut

print "Looking for my files that are readable and writable\n";
die "No files specified!\n" unless @ARGV;
foreach(@ARGV){
  print "$_ is readable and writable\n" if -o -r -w $_;
}
