#!/usr/bin/perl

if ( -r -w -x -o -d $file ){
  print "My directory is readable, writable, and executable!\n";
}

if ( -d $file and -s _ < 512) {
  print "The directory is less than 512 bytes!\n";
}

=begin
$timestamp = gmtime;
my($sec, $min, $hour, $day, $mon, $year, $wday, $yday, $isdst)
= localtime $timestamp;
=cut
