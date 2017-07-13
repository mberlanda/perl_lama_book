#!/usr/bin/perl

system "date";
system 'ls -l $HOME'; # "ls -l \$HOME"

# system "long_running_command with parameters &";
# use & to run a long process int the backgroung

system 'for i in **/*; do echo == $i ==; cat $i; done';

=begin
Run using more than one argument:

my $tarfile = "something*wicked.tar";
my @dirs = qw(fred|flintstone <barney&rubble> betty );
system "tar", "cvf", $tarfile, @dirs;

system $command_line;
system "/bin/sh", "-c", $command_line;
system "/bin/csh", "-fc", $command_line;

!system "rm -rf files_to_delete" or die "something went wrong";
=cut
