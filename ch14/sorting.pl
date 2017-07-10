#!/usr/bin/perl

sub by_number { $a <=> $b }
@some_numbers = (13, 12, 3, 47);
foreach(sort by_number @some_numbers){ print $_ . "\n"; }

sub ASCIIbetically { $a cmp $b }
sub case_insensitive { "\L$a" cmp "\L$b" }

my %score = ("barney" => 195, "fred" => 205, "dino" => 30, "bamm-bamm" => 195);

sub by_score { $score{$b} <=> $score{$a} }
my @winners = sort by_score keys %score;
print @winners;

sub by_score_and_name {
  $score{$b} <=> $score{$a}
    or
  $a cmp $b
}
my @winners = sort by_score_and_name keys %score;
print @winners;

=begin
@patron_IDs = sort {
&fines($b) <=> &fines($a) or
$items{$b} <=> $items{$a} or
$family_name{$a} cmp $family_name{$a} or
$personal_name{$a} cmp $family_name{$b} or
$a <=> $b
} @patron_IDs;
=cut
