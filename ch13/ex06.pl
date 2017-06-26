#!/usr/bin/perl

=begin
If your operating system supports it, write a program that works like ln, making
a hard link from the first command-line argument to the second. (You don’t need
to handle options of ln or more arguments.) If your system doesn’t have hard links,
just print out a message telling what operation you would perform if it were avail-
able. (Hint: this program has something in common with the previous one—
recognizing that could save you time in coding.)
=cut

use File::Basename;
use File::Spec;

my ($source, $dest) = @ARGV;

if (-d $dest) {
  my $basename = basename $source;
  $dest = File::Spec->catfile($dest, $basename;)
}

link $source, $dest
 or die "Can't link '$source' to '$dest': $!\n";
