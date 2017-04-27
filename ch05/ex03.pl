#|/usr/bin/perl

=begin
Modify the previous program to let the user choose the column width so that
entering 30 , hello , good-bye (on separate lines) would put the strings at the 30th
column. (Hint: see the section in Chapter 2 about controlling variable interpola-
tion.) For extra credit, make the ruler line longer when the selected width is larger.
=cut

my $ruler = "1234567890" x 7 . "\n";
print "Please enter column width desired(0-60):\n";
chomp($width = <STDIN>);
$format = "%" . $width ."s\n";
print "Please enter some strings and press Ctrl+D when you are done\n";
chomp(@lines = <STDIN>);
print $ruler;
printf $format x @lines, @lines;

# "%${width}s\n",
# printf "%*s\n", $width, $_;
