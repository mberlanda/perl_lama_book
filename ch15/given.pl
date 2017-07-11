#!/usr/bin/perl

use 5.022;

given( $ARGV[0] ) {
  when( /fred/i) { say 'Name has fred in it'; continue; }
  when( $_ =~ /^Fred/) { say 'Name starts with Fred'; continue; }
  when( $_ ~~ 'Fred') { say 'Name is Fred'; }
  default { say "I don't see a Fred"; }
}
