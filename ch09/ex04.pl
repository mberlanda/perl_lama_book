#!/usr/bin/perl -w
## Copyright (C) 20XX by Yours Truly

=begin
Extra credit exercise: write a program to add a copyright line to all of your
exercise answers so far, by placing a line like:
## Copyright (C) 20XX by Yours Truly
in the file immediately after the “shebang” line. You should edit the files “in place,”
keeping a backup. Presume that the program will be invoked with the filenames to
edit already on the command line.
=cut

$^I = ".bak";
while (<>){
  if (/^#!/) {
    $_ .= "## Copyright (C) 20XX by Yours Truly\n";
  }
  print;
}
