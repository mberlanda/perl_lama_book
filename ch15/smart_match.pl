#!/usr/bin/perl

use 5.010;

$name = "Fred Flintstone";
print "I found Fred in the name!\n" if $name =~ /Fred/;
print "I found Fred in the name!" if $name ~~ /Fred/;
print "I found Fred in the name!" if /Fred/ ~~ $name;

%names = (
  "fred" => "flintstone",
  "barney" => "rubble",
);

my $flag = 0;
foreach my $key ( keys %names ) {
  next unless $key =~ /Fred/i;
  $flag = $key;
  last;
}
print "I found a key matching 'Fred'. It was $flag\n" if $flag;
say "I found a key matching 'Fred'" if %names ~~ /Fred/i;

@names1 = keys %names;
@names2 = keys %names;
say "The arrays have the same elements!" if @names1 ~~ @names2;

my @nums = qw( 1 2 3 27 42 );
my $result = max( @nums );
say "The result [$result] is one of the input values (@nums)" if @nums ~~ $result;
say "The result [$result] is one of the input values (@nums)" if $result ~~ @nums;
