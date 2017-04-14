#!/usr/bin/perl -w

=begin
Write a program that reads a list of numbers (on separate lines) until end-of-
input and then prints for each number the corresponding person’s name from the
list shown below. (Hardcode this list of names into your program. That is, it should
appear in your program’s source code.) For example, if the input numbers were
1 , 2 , 4 , and 2 , the output names would be fred , betty , dino , and betty :
fred betty barney dino wilma pebbles bamm-bamm
=cut

use experimental 'smartmatch';

sub isNumeric{
  my ($val) = @_;
  return $val =~ /^\d+$/ ? 1 : 0;
}

@names = qw( fred betty barney dino wilma pebbles bamm-bamm );
print "Enter some numbers between 0 and $#names, then press Ctrl-D:\n";

chomp(@numbers = <STDIN>);
foreach(@numbers){
  if ( isNumeric($_) ) {
    if ($_ ~~ [0..$#names]){
      print $names[$_] . "\n";
    } else {
      print $_ . " is out of range\n";
    }
  } else {
    print $_ . " is not a valid input\n";
  }
}
