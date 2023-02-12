#!/usr/bin/env perl6
# 
# rob_question_loop_var_scope.raku            12 Feb 2023 

use v6;

my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com
{
    my $m;

    for @monsters -> $m {
        last if $m ~~ /^z/;
        LAST { $OUTER::OUTER::m = $m };   ## A single OUTER just refers to the alias, the inner $m, which is readonly
    }

    say $m; # zoma
}

# {
#     my $m;
#     for @monsters -> OUTER::<$m> {  # Could not locate compile-time value for symbol OUTER
#         last if $m ~~ /^z/;
#     }
#     say $m; # zoma
# }

{
    my $*m;
    for @monsters -> $*m { 
        last if $*m ~~ /^z/;
    }
    say $*m; # (Any)
}

{
    say @monsters.first({/^z/}); # zoma
    say @monsters.first( /^z/ ); # zoma
}


{
    my $found = gather 
    for @monsters -> $m { 
        take $m  if $m ~~ /^z/;
    }
    say $found;
}
