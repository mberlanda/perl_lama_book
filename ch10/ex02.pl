 #!/usr/bin/perl

=begin
Modify the program from the previous exercise to print extra debugging in-
formation as it goes along, such as the secret number it chose. Make your change
such that you can turn it off, but your program emits no warnings if you turn it off.
If you are using Perl 5.10, use the // operator. Otherwise, use the ternary operator.
=cut

my $Debug = $ENV{DEBUG} // 0;
my $secret = int(1+ rand 100);
print "The secret number is $secret\n" if $Debug;

while(1){
  print "Print enter a guess from 1 to 100: ";
  chomp(my $guess = <STDIN>);
  if ($guess =~ /quit|exit|^\s*$/i){
    print "Sorry you gave up. The solution was $secret\n";
    last;
  } elsif ($guess < $secret) {
    print "Too small. Try again\n";
  } elsif ($guess == $secret) {
    print "That was it!\n";
    last;
  } else {
    print "Too large. Try again\n";
  }
}
