#!/usr/bin/perl

=begin
Using for-when , write a program that goes through a list of files on the com-
mand line and reports if each file is readable, writable, or executable. You don’t
need to use smart matching.
=cut

use 5.010;

for( @ARGV )
{
  say "Processing $_";
  when(! -e) { say "\tFile does not exist!" }
  when(-r _) { say "\tReadable!"; continue }
  when(-w _) { say "\tWritable!"; continue }
  when(-x _) { say "\tExecutable!"; continue }
}
