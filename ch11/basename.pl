#!/usr/bin/perl

use File::Basename qw/ basename dirname / ;
use File::Spec;

print "Please enter a filename: \n";
chomp(my $old_name = <STDIN>);

my $basename = basename $old_name;
my $dirname = dirname $old_name;

print "The file basename is: $basename\n";
print "The file dirname is: $dirname\n";

$basename =~ s/^/not/;
my $new_name = File::Spec->catfile($dirname, $basename);

rename($old_name, $new_name)
  or warn "Can't rename '$old_name' to '$new_name'!";
