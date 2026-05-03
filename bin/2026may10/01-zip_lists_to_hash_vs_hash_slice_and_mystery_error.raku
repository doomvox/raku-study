#!/usr/bin/env raku

use Test;

## Problemette: Starting with lists of names and values, create a hash:
my @monsters = <godzilla rhodan blob tingler crinoid>;
my @levels = 8, 3, 5, 4, 6;

# Goal:
my %threat  =
    ('godzilla' => 8, 'rhodan' => 3, 'blob' => 5, 'tingler' => 4, 'crinoid' => 6);

{   # this works well:
    my %h = @monsters Z=> @levels;
    say %h; # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    is-deeply(%h, %threat, "Zippy fat comma");
}

{ # this also works well:
    my %h;
    %h{ @monsters } = @levels;
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    is-deeply(%h, %threat, "Assign to hash slice");
}

## The one drawback is the need to declare the hash before assignment,
## this doesn't work:

{ 
    # my %h{ @monsters } = @levels;
    # compilation ERROR:
    # Invalid hash shape; type expected

    # And that's because of this syntax, if you want a hash restricted to Int keys, for example:
    my %i{Int};
    %i{1} = 'okay';
    say %i; # {1 => okay}
    %i{'tew'} = 'no workies'; # Type check failed in binding to parameter 'key'; expected Int but got Str ("tew")


}









