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
## so these two are the same, both call the sub
say nada;    # 0
say nada();  # 0
say "===";

## next question:
## what if you have a sub of the same name as an unsigiled var?
## which wins?
my \keyster = 'alpha';
sub keyster {
    return 'beta';
}
say keyster;   # alpha
say keyster(); # beta
## ... so now, you *do* need those parens to call the sub
say "===";
## now, let's try that when in a hash dereference
my %fried;
%fried{keyster} = 'Sans parens';
say %fried;
# {alpha => Sans parens}
## we hit the unsigiled var again

## And to do the subcall, use parens:
%fried{keyster()} = 'With parens'; 
say %fried;
# {alpha => Sans parens, beta => With parens}

## So yes, that works the same way.

## (Damn.  Thought I had a bug there for a minute.)
