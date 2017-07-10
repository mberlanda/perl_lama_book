#!/usr/bin/perl

=begin
Make a program that will print the following hash’s data sorted in
case-insensitive alphabetical order by last name. When the last names are the same,
sort those by first name (again, without regard for case). That is, the first name in
the output should be Fred’s, while the last one should be Betty’s. All of the people
with the same family name should be grouped together. Don’t alter the data. The
names should be printed with the same capitalization as shown here. (You can find
the source code to create a hash like this in the file sortable_hash with the other
downloaded files.)
=cut

my %last_name = qw{
fred flintstone Wilma Flintstone Barney Rubble
betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub by_last_then_first_name {
  "\L$last_name{$a}" cmp "\L$last_name{$b}"
    or
  "\L$a" cmp "\L$b"
}

my @keys = sort by_last_then_first_name keys %last_name;
foreach(@keys){ print "$last_name{$_}, $_\n"; }
