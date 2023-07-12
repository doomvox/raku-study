#!/usr/bin/env raku
# 
# braces_mean_code_and_hashes.raku            12 Jul 2023 

use v6;

## why can't braces act like angles in raku?
## I think: because braces are supposed to mean code

## next question:
## name spaces for subs and unsigiled vars.
## which wins?

my \keyster = 'alpha';

sub keyster {
    return 'beta';
}

my %fried;
%fried{keyster} = 'And the winner is... ';

say %fried;
