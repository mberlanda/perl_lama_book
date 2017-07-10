#!/usr/bin/perl

my $date_tag = sprintf "%4d/%02d/%02d %2d:%02d:%02d", $yr, $mo, $da, $h, $m, $s;

my $money = sprintf "%.2f", 2.49997;

sub big_money {
  my $number = sprintf "%.2f", shift @_;
  1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/; # Add one comma each time through the do-nothing loop
  $number =~ s/^(-?)/$1\$/; # Put the dollar sign in the right place
  $number;
}

print big_money 192337232910293373.009991;
