#!/usr/bin/perl

# sudo cpan -i DBI
# sudo cpan -i DBD:Pg

use DBI;

my $data_source = "dbi:Pg:dbname=db_name";
my $username = "username";
my $password = "password";

$dbh = DBI->connect($data_source, $username, $password);
$sth = $dbh->prepare("SELECT * FROM users");
$sth->execute();
@row_ary = $sth->fetchrow_array;
$sth->finish;
$dbh->disconnect();

foreach(@row_ary){
  print $_ . "\n";
}
