#!/usr/bin/perl -w

=begin
Modify the program from Exercise 3 in Chapter 6 (the environment lister) to
print (undefined value) for environment variables without a value. You can set
the new environment variables in the program. Ensure that your program reports
the right thing for variables with a false value. If you are using Perl 5.10, use
the // operator. Otherwise, use the ternary operator.
=cut

use warnings;
$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my ($longest_key, $key_length);
$longest_key = 0;

foreach my $key ( keys %ENV ) {
  $key_length = length( $key );
  $longest_key = $key_length if $key_length > $longest_key;
}

foreach my $key ( sort keys %ENV ) {
  printf "%-${longest_key}s %s\n", $key, $ENV{$key} // "(undefined)";
}
