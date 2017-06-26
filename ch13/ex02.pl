#!/usr/bin/perl

=begin
Modify the program to include all files, not just the ones that don’t begin with
a dot.
=cut

print "Which directory do you want to list? (Default is home)\n";
chomp (my $dir = <STDIN>);
if ($dir =~ /^\s*$/) {
  chdir or die "Can't chdir to your home directory: $!\n";
} else {
  chdir $dir or die "Can't chdir to '$dir': $!\n";
}

my @files = <* .*>;
foreach (sort @files) {
  print $_ . "\n";
}
