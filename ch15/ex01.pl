#!/usr/bin/perl

=begin
Rewrite your number guessing program from Exercise 1 in Chapter 10 to use
given . How would you handle nonnumeric input? You don’t need to use smart
matching.
=cut
use 5.010;

my $secret = int(1+ rand 100);

my $Verbose = $ENV{VERBOSE} // 0;
say "Don't tell anyone, but the secret number is $secret." if $Verbose;

LOOP: {
  say "Print enter a guess from 1 to 100: ";
  chomp(my $guess = <STDIN>);

  given($guess){
    when(/quit|exit|^\s*$/i){
      say "Sorry you gave up. The solution was $secret"; last LOOP;
    }
    when(! /^\d+$/) { say "Not a number!"; }
    when($_ < $secret){
      say "Too small. Try again";
    }
    when($secret) {
      say "That was it!"; last LOOP;
    }
    default { say "Too large. Try again"; }
  }
  redo LOOP;
}
