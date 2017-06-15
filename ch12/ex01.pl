#!/usr/bin/perl

=begin
Make a program that takes a list of files named on the command line and
reports for each one whether it’s readable, writable, executable, or doesn’t exist.
(Hint: it may be helpful to have a function that will do all of the file tests for one
file at a time.) What does it report about a file that has been chmod’ed to 0 ? (That
is, if you’re on a Unix system, use the command chmod 0 some_file to mark that
file as not being readable, writable, nor executable.) In most shells, use a star as
the argument to mean all of the normal files in the current directory. That is, you
could type something like ./ex12-2 * to ask the program for the attributes of many
files at once.
=cut

foreach my $file(@ARGV){
  my $attribs = &attributes($file);
  print "'$file' $attribs.\n";
}

sub attributes {
  my $file = shift @_;
  return "does not exists" unless -e $file;

  my @attrib;
  push @attrib, "readable" if -r $file;
  push @attrib, "writable" if -w $file;
  push @attrib, "executable" if -x $file;
  return "exists" unless @attrib;
  "is " . join " and ", @attrib;
}
