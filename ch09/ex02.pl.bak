#!/usr/bin/perl
## Copyright (C) 20XX by Yours Truly

=begin
Write a program that makes a modified copy of a text file. In the copy, every
string Fred (case-insensitive) should be replaced with Larry . (So, Manfred Mann
should become ManLarry Mann .) The input filename should be given on the com-
mand line (don’t ask the user!), and the output filename should be the corre-
sponding filename ending with .out .
=cut

my $in = $ARGV[0];
unless (defined $in){
  die "Usage: $0 filename";
}

my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

unless (open IN, "<$in"){
  die "Can't open '$in': $!";
}

unless (open OUT, ">$out"){
  die "Can't write '$out': $!";
}

while (<IN>){
  s/Fred/Larry/gi;
  print OUT $_;
}
