#!/usr/bin/perl

my $stuff = "Howdy world!";
my $where1 = index($stuff, "w");
# print $where1 . "\n"; # $where1 gets 2
my $where2 = index($stuff, "w", $where1 + 1);
# print $where2 . "\n"; # $where2 gets 6
my $where3 = index($stuff, "w", $where2 + 1);
# print $where3 . "\n"; # $where3 gets −1 (not found)

my $fred = "Yabba dabba doo!";
my $where1 = rindex($fred, "abba");
# print $where1 . "\n"; # $where1 gets 7
my $where2 = rindex($fred, "abba", $where1 - 1);
# print $where2 . "\n"; # $where2 gets 1
my $where3 = rindex($fred, "abba", $where2 - 1);
# print $where3 . "\n"; # $where3 gets −1 (not found)
