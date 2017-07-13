#!/usr/bin/perl

=begin
Write a program that changes to some particular (hardcoded) directory, like
the system’s root directory, then executes the ls -l command to get a long-format
directory listing in that directory. (If you use a non-Unix system, use your own
system’s command to get a detailed directory listing.)
=cut

chdir "/" or die "Cannot chdir to root directory: $!";
exec "ls", "-l" or die "Cannot exec ls: $!";
