#!/usr/bin/perl

=begin
Write a program to ask the user for a directory name, then change to that
directory. If the user enters a line with nothing but whitespace, change to his or
her home directory as a default. After changing, list the ordinary directory contents
(not the items whose names begin with a dot) in alphabetical order. (Hint: will that
be easier to do with a directory handle or with a glob?) If the directory change
doesn’t succeed, just alert the user—but don’t try show the contents.
=cut

print "Which directory do you want to list? (Default is home)\n";
chomp (my $dir = <STDIN>);
if ($dir =~ /^\s*$/) {
  chdir or die "Can't chdir to your home directory: $!\n";
} else {
  chdir $dir or die "Can't chdir to '$dir': $!\n";
}

my @files = <*>;
foreach (@files) {
  print $_ . "\n";
}
