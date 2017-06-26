#!/usr/bin/perl

=begin
If your operating system supports it, fix up the program from the previous
exercise to allow an optional -s switch before the other arguments to indicate that
you want to make a soft link instead of a hard link. (Even if you don’t have hard
links, see whether you can at least make soft links with this program.)
=cut

use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my ($source, $dest) = @ARGV;

if (-d $dest) {
  my $basename = basename $source;
  $dest = File::Spec->catfile($dest, $basename;)
}

if ($symlink) {
  symlink $source, $dest
  or die "Can't symlink '$source' to '$dest': $!\n";
} else {
  link $source, $dest
  or die "Can't link '$source' to '$dest': $!\n";
}
