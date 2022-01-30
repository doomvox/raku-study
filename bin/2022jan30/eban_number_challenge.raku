#!/usr/bin/env perl6
# 
# eban_number_challenge.raku            30 Jan 2022 

use v6;

# Rob Ransbottom has a side-issue playing with the Eban Numbers weekly challenge:

{
    my @eban = [<2 4 6 > ], # george
    [<3 4 5 6 0 >], # alex
    # Enough already, but generalizing.
    [<0 >], # benny
    [<2 4 6>], # georgeish
    [<3 4 5 6 0>], # alexish
    [<2 4 6>], # woody
    # The preceding 3 lines could be 'xx 6'.
    # What syntax?!
    # Chose Array as rw. List for convenience
    # of entry.
    ; 
}

{
    # bruce gray approach:
    my @eban =
    [<2 4 6 > ],            # george
    [<3 4 5 6 0 >],         # alex
    [<0 >],                 # benny
    |(
        |(
            [<2 4 6>],     # georgeish
            [<3 4 5 6 0>], # alexish
            [<2 4 6>],     # woody
        ) xx 6
    )
    ; 

    .say for @eban; 


}

# useful for debugging 
# say $_».Numeric.raku for @eban; 
# or
# .say for @eban; 


say "===";
{ # playing with slip

    my @a = <<alpha beta gamma>>;
    my @b = <<godzilla mothera rhodan>>;
    my @c = <<bob ted carol>>;

    my @a_of_a = (@a, @b, @c);

    dd @a_of_a;
    # Array @a_of_a = [["alpha", "beta", "gamma"], ["godzilla", "mothera", "rhodan"], ["bob", "ted", "carol"]]

    say | @a_of_a; 
    # [alpha beta gamma][godzilla mothera rhodan][bob ted carol]    

    say @a_of_a.flat;
    # ([alpha beta gamma] [godzilla mothera rhodan] [bob ted carol])

    say @a_of_a>>.flat;
    # [[(alpha) (beta) (gamma)] [(godzilla) (mothera) (rhodan)] [(bob) (ted) (carol)]]

    say @a_of_a.deepmap({ say $_; $_; });
    # alpha
    # beta
    # gamma
    # godzilla
    # mothera
    # rhodan
    # bob
    # ted
    # carol
    # [[alpha beta gamma] [godzilla mothera rhodan] [bob ted carol]]

    my @flattened; 
    say @a_of_a.deepmap({ push( @flattened, $_ ) });
    say @flattened;
    # [alpha beta gamma godzilla mothera rhodan bob ted carol]
  
}

say "===";
{
    my @a = <<a b g>>;
    my @b = <<G M R>>;
    my @c = <<b t c>>;

    my @a_of_a = (@a, @b, @c);

    # bruce gray idea:
    say @a_of_a.map(*.Slip);
    # (a b g G M R b t c)
    #  but that only handles the two level deep case (desireable sometimes?)

    my @a_of_a_of_a = ( @a_of_a, @a_of_a, @a_of_a );
    say @a_of_a_of_a;
    ## [[[a b g] [G M R] [b t c]] [[a b g] [G M R] [b t c]] [[a b g] [G M R] [b t c]]]

    say @a_of_a_of_a.map(*.Slip);
    ## ([a b g] [G M R] [b t c] [a b g] [G M R] [b t c] [a b g] [G M R] [b t c])

    # deeply flattens:
    my @flattened; 
    say '---';
    @a_of_a.deepmap({ push( @flattened, $_ ) });
    say @flattened; # [a b g G M R b t c]

}

say "===";
{
    ## Example in the docs:
    say [[1, 2, 3], [(4, 5), 6, 7]]      .flat; # OUTPUT: «([1 2 3] [(4 5) 6 7])␤» 
    # ([1 2 3] [(4 5) 6 7])
    say [[1, 2, 3], [(4, 5), 6, 7]]».List.flat; # OUTPUT: «(1 2 3 4 5 6 7)␤»
    # (1 2 3 4 5 6 7)

    ## applying .List to each array decontainerizes it, making it flattenable.

}

say "===";
{
    my @ary = [ 'a', [ 'b', 'c', [ 'd', 'e', [ 'f', 'g']]]];
    @ary[*;*;*;*].say; 
    #  (a b c d e f g)

    # dropping one of the four whatever stars
    @ary[*;*;*].say; 
    # (a b c d e [f g])

}

say "===";
{
    my %h = a => 1, b => 2, c => 3;
    dd %h; # Hash %h = {:a(1), :b(2), :c(3)}

    say %h;
    # {a => 1, b => 2, c => 3}

    # the "decont" operator
    say %h<>;
    # {a => 1, b => 2, c => 3}

    say %h.kv;
    # (b 2 a 1 c 3)

}
