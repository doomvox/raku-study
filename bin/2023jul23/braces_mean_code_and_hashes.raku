#!/usr/bin/env raku
# 
# braces_mean_code_and_hashes.raku            12 Jul 2023 

use v6;

## why can't braces act like angles in raku?
## I think: because in Raku braces are supposed to consistently mean code evaluation
{
    my %threat_level = godzilla => 9,  mothera => 7, tingler => 5;
    say %threat_level{'godzilla'}; # 9   Need explicit quoting, unlike perl5
    say %threat_level<godzilla>;   # 9   
}
say "===";
# side issue: remember you don't need parens on subcalls
sub nada {
    return 0;
}
say nada;
say nada();
say "===";

## next question:
## name spaces for subs and unsigiled vars.
## which wins?

my \keyster = 'alpha';

sub keyster {
    return 'beta';
}
say keyster; # alpha

say "===";
my %fried;
%fried{keyster} = 'And the winner is... ';

say %fried;
# {alpha => And the winner is... }


%fried{keyster()} = 'But then... '; # no-op.

say keyster;    # alpha
say keyster();  # beta

## So: why don't we have a 'beta' key in %fried?
