#!/usr/bin/perl

=begin
Write a program to parse the output of the date command to determine the
current day of the week. If the day of the week is a weekday, print get to work ,
otherwise print go play . The output of the date command begins with Mon on a
Monday. † If you don’t have a date command on your non-Unix system, make a
fake little program that simply prints a string like date might print. We’ll even give
you this two-line program if you promise not to ask us how it works:
#!/usr/bin/perl
print localtime( ) . "\n";
=cut

if (`date` =~ /^S/) {
  print "go play!\n";
} else {
  print "get to work!\n";
}
