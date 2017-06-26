#!/usr/bin/perl

my $name = "fred";
my $permissions = "0755";

# mkdir $name, $permissions;
# This is going to create a folder with 01363 permissions

mkdir $name, oct($permissions);

my ($name, $perm) = @ARGV;
mkdir $name, oct($perm) or die "cannot create $name: $!";

foreach my $dir(qw(fred barney betty)) {
  unlink glob "$dir/* $dir/.*";
  rmdir $dir or warn "cannot rmdir $dir: $!\n";
}
