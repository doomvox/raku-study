#!/usr/bin/raku

my @monsters = <<godzilla rhodan blob tingler crinoid>>;
say @monsters;  # [godzilla rhodan blob tingler crinoid]
say @monsters.WHAT;  # (Array)

my $plaid = @monsters.BagHash;
say $plaid;      # BagHash(blob crinoid godzilla rhodan tingler)
say $plaid.WHAT; # (BagHash) 

my %carpet = @monsters.BagHash;
say %carpet;      # {blob => 1, crinoid => 1, godzilla => 1, rhodan => 1, tingler => 1}
say %carpet.WHAT; # (Hash)

## A mild surprise, but only mild.  Okay, so %carpet is a Hash, you can assign a BagHash to it, but you get a Hash.


my BagHash %carpet = @monsters.BagHash;
say %carpet;      # {blob => 1, crinoid => 1, godzilla => 1, rhodan => 1, tingler => 1}
say %carpet.WHAT; # (Hash)
