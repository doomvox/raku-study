#!/usr/bin/env perl6
# 
# sets_etc-working_from_lizmat_examples_fosdem_talk.pl6            17 Feb 2021 

use v6;


## lizmat fosdem 2021 
{
    .say for ("a" .. "z").roll(1000)
    .Bag
    .sort( - *.value )
    .head(5)
    }
