#!/usr/bin/raku

my @monsters = <<godzilla rhodan blob tingler crinoid>>;
my %threat  = @monsters X (1, 2, 3, 4, 5);
say %threat;
