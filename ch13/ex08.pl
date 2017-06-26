#!/usr/bin/perl

=begin
If your operating system supports it, write a program to find any symbolic links
in the current directory and print out their values (like ls -l would: name -> value ).
=cut

foreach (<* .*>) {
  my $dest = readlink $_;
  print "$_ -> $dest\n" if defined $dest;
}
