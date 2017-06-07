#!/usr/bin/perl

=begin
Extra extra credit exercise: modify the previous program so that it doesn’t edit
the files that already contain the copyright line. (Hint: you might need to know
that the name of the file being read by the diamond operator is in $ARGV .)
=cut

my %do_these;

foreach (@ARGV) {
  $do_these{$_} = 1;
}

while (<>) {
  if (/## Copyright/){
    delete $do_these{$ARGV};
  }
}

@ARGV = sort keys %do_these;
$^I = ".bak";
while (<>){
  if (/^#!/) {
    $_ .= "## Copyright (C) 20XX by Yours Truly\n";
  }
  print;
}
