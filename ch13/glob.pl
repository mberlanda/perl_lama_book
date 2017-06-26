#!/usr/bin/perl

my @all_files = glob("*");
my @all_files = <*>;

my @files = <FRED/*>; ## a glob
my @lines = <FRED>; ## a filehandle read

my $name = "FRED";
my @files = <$name/*>; ## a glob
my @lines = <$name>; ## an indirect filehandle read of FRED handle

my @lines = readline FRED; ## read from FRED
my @lines = readline $name; ## read from FRED

unlink glob "*.o"; ## equivalent to rm *.o

my $successful = unlink "slate", "bedrock", "lava";
print "I deleted $successful file(s) just now\n";
