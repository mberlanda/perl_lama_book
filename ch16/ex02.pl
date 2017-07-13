#!/usr/bin/perl

=begin
Modify the previous program to send the output of the command to a file
called ls.out in the current directory. The error output should go to a file called
ls.err. (You don’t need to do anything special about the fact that either of these
files may end up being empty.)
=cut

open STDOUT, ">ls.out" or die "Can't write to ls.out: $!";
open STDERR, ">ls.err" or die "Can't write to ls.err: $!";
chdir "/" or die "Cannot chdir to root directory: $!";
exec "ls", "-l" or die "Cannot exec ls: $!";
