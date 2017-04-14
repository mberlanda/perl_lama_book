#!/usr/bin/perl

sub setMultiline{
  print "Would you like to see the output on separated lines?(Y/n)\n";
  my $answer = <STDIN>;
  chomp($answer);
  return "\L$answer" eq "n" ? 0 : 1;
}

$multiline = setMultiline();
print "Enter some strings, then press Ctrl-D:\n";
if ($multiline) {
  print sort <STDIN>;
} else {
  chomp(@lines = <STDIN>);
  @sorted = sort @lines;
  print "@sorted\n";
}
