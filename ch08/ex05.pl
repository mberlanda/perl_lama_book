#!/usr/bin/perl

=begin
Modify the program from the previous exercise so that
immediately following the word ending in a it will also capture up to five characters
(if there are that many characters, of course) in a separate memory variable. Update
the code to display both memory variables. For example, if the input string says I
saw Wilma yesterday , the up-to-five characters are yest . If the input is I, Wilma! ,
the extra memory should have just one character. Does your pattern still match
just plain wilma ?
=cut

while(<STDIN>) {
  chomp;
  if (/(?<word>\b\w*a\b)(?<next>.{0,5})/) {
    print "Matched: |$`<$&>$`|\n";
    print "\$1 contains '$+{word}'\n";
    print "\$2 contains '$+{next}'\n";
  } else {
    print "No match: |$_|\n";
  }
}
