#!/usr/bin/perl -w

@ARGV = qw# larry moe curly #;
while(<>){
  chomp;
  print "It was $_ that I saw in some stooge-like file!\n";
}
