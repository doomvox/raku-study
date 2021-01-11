#!/usr/bin/env perl6
# 
# json_comparator_worthington.pl6            08 Jul 2018 

## Tests two JSON files for equality, parsing them in parallel.
## A code example by Jonathan Worthington

use v6;

use JSON::Tiny;
sub MAIN($file1, $file2) {
    my $parsing1 = start from-json( slurp( $file1 ));
    my $parsing2 = start from-json( slurp( $file2 ));

    say $parsing1.^name;  # Promise

    my ($parsed1, $parsed2) = await $parsing1, $parsing2;
    say $parsed1 eqv $parsed2
    ?? 'Files contain identical JSON'
    !! 'Files contain different JSON';
}

# Author: Jonathan Worthington
# Typist:  doom@kzsu.stanford.edu

