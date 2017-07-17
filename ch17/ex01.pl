#!/usr/bin/perl
=begin
Make a program that reads a list of strings from a file, one string per line, and
then lets the user interactively enter patterns that may match some of the strings.
For each pattern, the program should tell how many strings from the file matched,
then which ones those were. Don’t reread the file for each new pattern; keep the
strings in memory. The filename may be hardcoded in the file. If a pattern is invalid
(for example, if it has unmatched parentheses), the program should simply report
that error and let the user continue trying patterns. When the user enters a blank
line instead of a pattern, the program should quit. (If you need a file full of inter-
esting strings to try matching, try the file sample_text in the files you’ve surely
downloaded by now from the O’Reilly web site; see the Preface.)
=cut
use 5.014;
use strict;

my $filename = $ARGV[0];

open FILE, $filename
  or die "Can't open '$filename': $!";
chomp(my @strings = <FILE>);

LOOP: {
  print "Please enter a pattern (or just press Enter to quit the program): ";
  chomp(my $pattern = <STDIN>);
  last if $pattern =~ /^\s*$/;
  my @matches = eval {
    grep /$pattern/, @strings;
  };
  if ($@) {
    print "Error: $@";
  } else {
    my $count = @matches;
    say "There were $count matching strings:";
    map {say "$_"} @matches;
  }
  say;
  redo LOOP;
}
