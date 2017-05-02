#!/usr/bin/perl -w

=begin
Write a program that reads a series of words (with one word per line * ) until
end-of-input, then prints a summary of how many times each word was seen. (Hint:
remember that when an undefined value is used as if it were a number, Perl auto-
matically converts it to 0 . It may help to look back at the earlier exercise that kept
a running total.) So, if the input words were fred , barney , fred , dino , wilma , fred
(all on separate lines), the output should tell us that fred was seen 3 times. For
extra credit, sort the summary words in ASCII order in the output.
=cut

my %summary = ();
# chomp(@words = <STDIN>);

print "Please enter some words to count and the press Ctrl+D\n";
foreach(<STDIN>){
  chomp($_);
  $summary{$_} += 1;
}


@ordered_keys = sort keys %summary;

foreach (@ordered_keys) {
print "$_ => $summary{$_}\n";
}
