#!/usr/bin/perl -w

=begin
Write a program that asks the user to enter a list of strings on separate lines,
printing each string in a right-justified, 20-character column. To be certain that the
output is in the proper columns, print a “ruler line” of digits as well. (This is simply
a debugging aid.) Make sure that you’re not using a 19-character column by mis-
take! For example, entering hello , good-bye should give output something like this:
123456789012345678901234567890123456789012345678901234567890
hello
good-bye
=cut

my $ruler = "1234567890" x 6;
my $format = "%20s\n";

print "Please enter some strings and press Ctrl+D when you are done\n";
chomp(@lines = <STDIN>);

print $ruler . "\n";
foreach(@lines){
  printf $format, $_;
}

# printf $format x @lines, @lines;
