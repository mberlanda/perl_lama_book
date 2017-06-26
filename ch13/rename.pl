#!/usr/bin/perl

foreach my $file (glob "*.old") {
  (my $newfile = $file) =~ s/\.old$/.new/;
  if (-e $newfile) {
    warn "can't rename $file to $newfile: $newfile exists\n";
  } elsif (rename $file, $newfile) {
    ## success, do nothing
  } else {
    warn "rename $file to $newfile failed: $!\n";
  }
}

=cut
  my $newfile = $file;
  $newfile =~ s/\.old$/.new/;
=end
