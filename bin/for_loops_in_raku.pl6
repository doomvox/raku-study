#!/usr/bin/env perl6
# 
# for_loops_in_raku.pl6            11 Oct 2020 

use v6;

## One of my standard demos of the virtues of raku of perl 
## is the for loop syntax that makes things like two or three
## at a time processing trivial.

## Some perl5 solutions:
##   for_loops_in_perl5.pl

my @original_monsters =
 < godzilla wolfman blob mothera garuda goldfish thevoid spawn fingfangfoom mysterio dormammu >;

{
    my @monsters = @original_monsters;
    try {
        for @monsters -> $a, $b {
            # say "1: $a  2: $b";
            printf( "1: %-13s  2: %-10s\n", $a, $b );
        }
        # 1: godzilla  2: wolfman
        # 1: blob  2: mothera
        # 1: garuda  2: goldfish
        # 1: thevoid  2: spawn
        # 1: fingfangfoom  2: mysterio
        # Too few positionals passed; expected 2 arguments but got 1

        ## TODO how do you resume processing after this CATCH?
        # CATCH { say "odd number of monsters"; .say; .resume};
        ## This exception is not resumable
    }
    # That crashes on an error because there's an odd number of items.
    # I've covered for that with a "try" block; though it drops the last item on the floor.
}

{
    ## David Christensen poses an alternate problem, where the number
    ## of items you deal with isn't fixed, but varies each time through the loop.
    ## His idea was to put integers interspersed in the list of strings, and 
    ## have the integers control how many items to read next. 
    ## My variant has a seperate list of chunk sizes.

    say "---";
    my @monsters = @original_monsters;
    my @chunks = ( 1, 2, 3, 4, 5 );
    while @monsters {
        state $i = 0;
        my @items = @monsters.splice( 0, @chunks[ $i ] );
        say @items;
        $i++;
    }

    # [godzilla]
    # [wolfman blob]
    # [mothera garuda goldfish]
    # [thevoid spawn fingfangfoom mysterio]
    # [dormammu]

   # Note: the final loop runs very short of "5" items, 
   # this loop handles the case okay.
}   

{
    say "---";
    my @monsters = @original_monsters;
    ## bruce gray solution:
    my @m = <1 a 3 b c d 2 e f 1 g>;
    loop ( my $i = 0; $i <= @m.end; ) {
        my $count = @m[ $i ];
        say $count, ' : ', @m.skip( $i+1 ).head( $count );
        $i += $count + 1;
    } 
    # 1 : (a)
    # 3 : (b c d)
    # 2 : (e f)
    # 1 : (g)
}


{
    say "---";
    ## bruce gray alternate to my code:
    my @monsters = @original_monsters;
    my @chunks = ( 1, 2, 3, 4, 5 );
    .say for @monsters.rotor( @chunks ); 
    # (godzilla)
    # (wolfman blob)
    # (mothera garuda goldfish)
    # (thevoid spawn fingfangfoom mysterio)

    ## It's very tight, but leaves behind the "dormammu"
    ## unprocessed, because there aren't enough items to fill out
    ## the chunk.
}
