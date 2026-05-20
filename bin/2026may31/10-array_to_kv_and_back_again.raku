#!/usr/bin/env raku

## The sequel to last meeting's musing:

  ## bin/2026may10/01-zip_lists_to_hash_vs_hash_slice_and_mystery_error.raku

{
    ## This gets you a hash restricted to Int keys:
    my %i{Int};
    %i{1} = 'okay';
    say %i; # {1 => okay}
#    %i{'tew'} = 'no workies'; # Type check failed in binding to parameter 'key'; expected Int but got Str ("tew")
}

{ 
    my @monsters = <godzilla rhodan blob tingler crinoid>;

    ## *.kv on an array gives you the integers as keys
    say @monsters.kv;
    # (0 godzilla 1 rhodan 2 blob 3 tingler 4 crinoid)

    # can create a hash from a kv stream easily:
    my %h = @monsters.kv.Hash;
    say %h;
    # {0 => godzilla, 1 => rhodan, 2 => blob, 3 => tingler, 4 => crinoid}

#     # but if you restrict to Int keys, it fails: those "numerics" are strings
#     my %h2{Int} = @monsters.kv.Hash;
#     say %h2;
#     # {0 => godzilla, 1 => rhodan, 2 => blob, 3 => tingler, 4 => crinoid}
#       # Type check failed in binding to parameter 'key'; expected Int but got Str ("1")

    # But you can make them Ints that are Cool with that
    my %h3{Int(Cool)} = @monsters.kv.Hash;
    say %h3;
    # {0 => godzilla, 1 => rhodan, 2 => blob, 3 => tingler, 4 => crinoid}

    # Round-trip recreation of the original array from the *.kv stream isn't that straight-forward 
    my @a = @monsters.kv;
    say @monsters;          # [godzilla rhodan blob tingler crinoid]
    say @a;                 # [0 godzilla 1 rhodan 2 blob 3 tingler 4 crinoid]
    say @a.kv;              # (0 0 1 godzilla 2 1 3 rhodan 4 2 5 blob 6 3 7 tingler 8 4 9 crinoid)

    say "===";
    # You can keep doing that, and look for number theory wisdom in the pattern
   
    say @monsters.kv;
    say @monsters.kv.kv;
    say @monsters.kv.kv.kv;
    say @monsters.kv.kv.kv.kv;
    say @monsters.kv.kv.kv.kv.kv;

# (0 godzilla 1 rhodan 2 blob 3 tingler 4 crinoid)
# (0 0 1 godzilla 2 1 3 rhodan 4 2 5 blob 6 3 7 tingler 8 4 9 crinoid)
# (0 0 1 0 2 1 3 godzilla 4 2 5 1 6 3 7 rhodan 8 4 9 2 10 5 11 blob 12 6 13 3 14 7 15 tingler 16 8 17 4 18 9 19 crinoid)
# (0 0 1 0 2 1 3 0 4 2 5 1 6 3 7 godzilla 8 4 9 2 10 5 11 1 12 6 13 3 14 7 15 rhodan 16 8 17 4 18 9 19 2 20 10 21 5 22 11 23 blob 24 12 25 6 26 13 27 3 28 14 29 7 30 15 31 tingler 32 16 33 8 34 17 35 4 36 18 37 9 38 19 39 crinoid)
# (0 0 1 0 2 1 3 0 4 2 5 1 6 3 7 0 8 4 9 2 10 5 11 1 12 6 13 3 14 7 15 godzilla 16 8 17 4 18 9 19 2 20 10 21 5 22 11 23 1 24 12 25 6 26 13 27 3 28 14 29 7 30 15 31 rhodan 32 16 33 8 34 17 35 4 36 18 37 9 38 19 39 2 40 20 41 10 42 21 43 5 44 22 45 11 46 23 47 blob 48 24 49 12 ...)

    # Q: How would you implement a "do this method n times"? 

    # Q: good way to format that output, to get numeric series displayed in parallel
 }

say "===";
{   # But okay, how do you get *.kv to round-trip in array creation?
    my @monsters = <godzilla rhodan blob tingler crinoid>;

    say @monsters.kv; # (0 godzilla 1 rhodan 2 blob 3 tingler 4 crinoid)

    my @new1 = @monsters.kv.grep({$++%2});  
    say @new1;  # [godzilla rhodan blob tingler crinoid]

    ## Interestingly, I don't see a list method that would be good to give you every-other element.  TODO

    my @new2 = @monsters.kv.rotor(2)>>.[1];
    say @new2; # [godzilla rhodan blob tingler crinoid]

    my @new3 = @monsters>>.[$++%2];
    say @new3; # [godzilla rhodan blob tingler crinoid]


}


