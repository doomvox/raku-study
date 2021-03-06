#!/usr/bin/env perl6
# 
# back_to_the_stash_of_array_in_hash.pl6            31 Jan 2021 

use v6;

## Revisiting:
## https://www.nntp.perl.org/group/perl.perl6.users/2020/03/msg8228.html

# There might not be much to say about this, I just though I'd
# mention that I keep getting re-surprised by basics with Raku,
# like this one, where first I stash an array away in a hash and
# later try to pull the array out again:

    my %stash;
    my @monsters =
      << godzilla grendel wormface blob fingfangfoom tingler >>;
    %stash{'monsters'} = @monsters;

# Now some time later, when I wanted to extract that array again,
# my first thought was to do this:

    my @m = %stash{'monsters'};
    say @m; # [[godzilla grendel wormface blob fingfangfoom tingler]]

# But that doesn't get the original array back, instead you end up
# with the entire original array as the first element of a newly
# created array:

    # [[godzilla grendel wormface blob fingfangfoom tingler]]

# Yary Hluchan pointed out that I could slip it out, and get what
# I wanted:

    my @m2 = | %stash{'monsters'};
    say @m2;
    # [godzilla grendel wormface blob fingfangfoom tingler]

# Though for what I'm doing now, I think it might be better to
# just alias it with the binding operator:

   my @m3 := %stash{'monsters'};
   say @m3;

