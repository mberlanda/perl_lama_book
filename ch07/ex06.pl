#!/usr/bin/perl -w

=begin
Extra credit exercise: write a program that prints out any input line that men-
tions both wilma and fred .
=cut

while(<>){
  if(/fred.*wilma|wilma.*fred/){
    print;
  }
}
