#!/usr/bin/perl

=begin
Write a program that works like rm, deleting any files named on the command
line. (You don’t need to handle any of the options of rm.)
=cut

foreach (@ARGV) {
  unlink $_ or warn "Can't unlink '$_': $!, continuing...\n";
}
