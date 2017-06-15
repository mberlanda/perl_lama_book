#!/usr/bin/perl

=begin
Make a program to identify the oldest file named on the command line and
report its age in days. What does it do if the list is empty (that is, if no files are
mentioned on the command line)?
=cut

die "No file names supplied!\n" unless @ARGV;

my $oldest_name = shift @ARGV;
my $oldest_age = -M $oldest_name;

foreach (@ARGV) {
  my $age = -M;
  ($oldest_name, $oldest_age) = ($_, $age)
    if $age > $oldest_age;
}

printf "The oldest file was %s, and it was %.1f days old.\n",
  $oldest_name, $oldest_age;
