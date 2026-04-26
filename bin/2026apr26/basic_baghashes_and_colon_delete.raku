#!/usr/bin/raku

my @monsters = <<godzilla rhodan blob tingler crinoid>>;
say @monsters;  # [godzilla rhodan blob tingler crinoid]
say @monsters.WHAT;  # (Array)

my $plaid = @monsters.BagHash;
say $plaid;      # BagHash(blob crinoid godzilla rhodan tingler)
say $plaid.WHAT; # (BagHash) 
