#!/usr/bin/perl

chdir "/tmp" or die "Cannot chdir /tmp: $!";
# exec "bedrock", "-o", "args1", @ARGV;
# exec "ls", "-la";

exec "date";
die "date couldn't run: $!";
