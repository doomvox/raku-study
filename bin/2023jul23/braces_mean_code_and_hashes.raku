#!/usr/bin/env raku
# 
# braces_mean_code_and_hashes.raku            12 Jul 2023 

use v6;

## why can't braces act like angles in raku?
## I think: because braces are supposed to mean code
{
    my %threat_level = godzilla => 9,  mothera => 7, tingler => 5;
    say %threat_level;

    say %threat_level{'godzilla'}; # 9
    say %threat_level<godzilla>;   # 9

}




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
# {alpha => And the winner is... }


%fried{keyster()} = 'But then... '; # no-op.

say keyster;    # alpha
say keyster();  # beta

## So: why don't we have a 'beta' key in %fried?
