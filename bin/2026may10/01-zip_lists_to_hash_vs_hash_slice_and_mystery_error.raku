#!/usr/bin/env raku

use Test;

## Problemette: Starting with lists of names and values, create a hash:
my @monsters = <godzilla rhodan blob tingler crinoid>;
my @levels = 8, 3, 5, 4, 6;

# Goal, this is what we want to create:
my %threat  =
    ('godzilla' => 8, 'rhodan' => 3, 'blob' => 5, 'tingler' => 4, 'crinoid' => 6);

{   # this works well:
    my %h = @monsters Z=> @levels;
    say %h; # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    is-deeply(%h, %threat, "Zippy fat comma");
}

## Bruce Gray: even better, covers issues with arrays of different length
  ## my %h = @a »=>« @b;


{ # this also works well:
    my %h;  # Note: has to be declared before the slice assignment
    %h{ @monsters } = @levels;
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    is-deeply(%h, %threat, "Assign to hash slice");
}

## The one drawback is that need to declare the hash before assignment,
# { 
#     ## this doesn't work:
#     # my %h{ @monsters } = @levels;

#     # compiler error:
#     #    Invalid hash shape; type expected

{
#    my %h{ @monsters } = @levels;
    # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/01-zip_lists_to_hash_vs_hash_slice_and_mystery_error.raku
    # Invalid hash shape; type expected

    }

{
    ## And that's because of this syntax, if you want a hash restricted to Int keys, for example:
    my %i{Int};
    %i{1} = 'okay';
    say %i; # {1 => okay}
#    %i{'tew'} = 'no workies'; # Type check failed in binding to parameter 'key'; expected Int but got Str ("tew")
}


## (I don't remember where I was going with this-- making something up now.)
{ 
    my @monsters = <godzilla rhodan blob tingler crinoid>;
    my @levels = 8, 3, 5, 4, 6;

    ## *.kv on an array gives you the integers as keys
    say @monsters.kv;
    # (0 godzilla 1 rhodan 2 blob 3 tingler 4 crinoid)

    my %h = @monsters.kv.Hash;


 }






