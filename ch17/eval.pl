#!/usr/bin/perl
use strict;

foreach my $person (qw/ fred wilma betty barney dino pebbles/) {
  eval {
    open FILE, "<$person"
      or die "Can't open file '$person':$!";
    my($total, $count);

    while (<FILE>) {
      $total += $_;
      $count++;
    }
    my $average = $total/$count;
    print "Average for file $person was $average\n";

    &do_something($person, $average)
  };
  if ($@) {
    print "An error occurred ($@), continuing\n";
  }
}
