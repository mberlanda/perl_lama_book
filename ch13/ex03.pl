#!/usr/bin/perl

=begin
If you used a directory handle for the previous exercise, rewrite it to use a glob.
Or if you used a glob, try it now with a directory handle.
=cut

print "Which directory do you want to list? (Default is home)\n";
chomp (my $dir = <STDIN>);
if ($dir =~ /^\s*$/) {
  chdir or die "Can't chdir to your home directory: $!\n";
} else {
  chdir $dir or die "Can't chdir to '$dir': $!\n";
}

my @files = glob "* .*";
foreach (sort @files) {
  print $_ . "\n";
}
