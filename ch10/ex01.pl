 #!/usr/bin/perl

=begin
Make a program that will repeatedly ask the user to guess a secret number
from 1 to 100 until the user guesses the secret number. Your program should pick
the number at random by using the magical formula int(1 + rand 100) . † When
the user guesses wrong, the program should respond “Too high” or “Too low.” If
the user enters the word quit or exit , or if the user enters a blank line, the program
should quit. Of course, if the user guesses correctly, the program should quit then
as well!
=cut

my $secret = int(1+ rand 100);

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
