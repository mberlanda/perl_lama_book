#!/usr/bin/perl

=begin
Write a program that works like mv, renaming the first command-line argu-
ment to the second command-line argument. (You don’t need to handle any of the
options of mv or additional arguments.) Remember to allow for the destination to
be a directory; if it is, use the same original basename in the new directory.
=cut

use File::Basename;
use File::Spec;

my ($source, $dest) = @ARGV;

if (-d $dest) {
  my $basename = basename $source;
  $dest = File::Spec->catfile($dest, $basename;)
}

rename $source, $dest
 or die "Can't rename '$source' to '$dest': $!\n";
