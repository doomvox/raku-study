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

{ # also works well:
    my %h;
    %h{ @monsters } = @levels;
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}

# { 
#     say "TRIAL: one line declare and use hash";
#     my %h{ @monsters } = @levels;    # Invalid hash shape; type expected
#     say %h;
#     # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
# }

{
#     my %h = (@monsters Z @levels)>>.kv;
#     say %h;
#     # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

#     # Odd number of elements found where hash initializer expected:

}

{
    my %h = (@monsters Z @levels)>>.kv.flat;
    say %h;
    # {0 => crinoid, 1 => 6}

    # heh: fail. But how?

    say (@monsters Z @levels)>>.kv.flat;
    # (0 godzilla 1 8 0 rhodan 1 3 0 blob 1 5 0 tingler 1 4 0 crinoid 1 6)

    # Ah: calling .kv on a list, so you get indicies...

    # my @a = (@monsters Z @levels)>>.kv.flat;
    # for @a -> $a { say $a; }
    
}


{
    my %h = %( (@monsters Z @levels)>>.List.flat ) ; 
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}

{ ## GOOD: Z metaop applied to =>
    say (@monsters Z=> @levels);
    # (godzilla => 8 rhodan => 3 blob => 5 tingler => 4 crinoid => 6)

    my %h = @monsters Z=> @levels;
    say %h;
#    {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}











