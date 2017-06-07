#!/usr/bin/perl
## Copyright (C) 20XX by Yours Truly

=begin
Modify the previous program to change every Fred to Wilma and every Wilma to
Fred . Now input like fred&wilma should look like Wilma&Fred in the output.
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
  chomp;
  s/Fred/\n/gi;
  s/Wilma/Fred/gi;
  s/\n/Wilma/gi;
  print OUT $_ . "\n";
}
