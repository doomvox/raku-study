#!/usr/bin/env raku

## Starting with a list of names:
my @monsters = <<godzilla rhodan blob tingler crinoid>>;

## I want a hash with numeric values assigned to each:
my %threat  =
    ('godilla' => 8, 'rhodan' => 3, 'blob' => 5, 'tingler' => 4, 'crinoid' => 6);

## But typing the key values over again seems silly.
## So:

my @levels = 8, 3, 5, 4, 6;

say @monsters Z @levels;
# ((godzilla 8) (rhodan 3) (blob 5) (tingler 4) (crinoid 6))

# say (@monsters Z @levels).Hash;
# # Odd number of elements found where hash initializer expected:

# my %h =  (@monsters Z @levels);
# say %h;

say "===";

# my $h = (@monsters Z @levels).map({$_.pairup}).Hash;

my $h = (@monsters Z @levels).map({$_.pairup});
say $h;
# ((godzilla => 8) (rhodan => 3) (blob => 5) (tingler => 4) (crinoid => 6))
# say $h<rhodan>;
# # Type Seq does not support associative indexing.

my $h2 = (@monsters Z @levels)>>.pairup;
say $h2;
