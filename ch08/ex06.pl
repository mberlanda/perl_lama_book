#!/usr/bin/perl

=begin
Write a new program (not the test program!) that prints out any input line
ending with whitespace (other than just a newline). Put a marker character at the
end of the output line so as to make the whitespace visible.
=cut

while(<STDIN>){
  chomp;
  if (m!\s$!){
    print "$_#\n";
  }
}
