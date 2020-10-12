#!/usr/bin/env perl6
# 
# for_loops_in_raku.pl6            11 Oct 2020 

use v6;

## One of my standard demos of the virtues of raku of perl 
## is the for loop syntax that makes things like two or three
## at a time processing trivial.

## Some perl5 solutions:
##   for_loops_in_perl5.pl

{ 
    my @monsters = < godzilla wolfman blob mothera garuda goldfish thevoid spawn fingfangfoom mysterio dormammu >;
    for @monsters -> $a, $b {
        say "1: $a  2: $b";
    }
}

{
    ## David Christensen poses an alternate problem, where the number
    ## of items you deal with isn't fixed, but varies each time through the loop.
    ## His idea was to put integers interspersed in the list of strings, and 
    ## have the integers control how many items to read next. 
    ## My variant has a seperate list of chunk sizes.

    my @monsters = < godzilla wolfman blob mothera garuda goldfish thevoid spawn fingfangfoom mysterio dormammu >;
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
    my @monsters = < godzilla wolfman blob mothera garuda goldfish thevoid spawn fingfangfoom mysterio dormammu >;
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
    ## bruce gray alternate to my code:
    my @monsters = < godzilla wolfman blob mothera garuda goldfish thevoid spawn fingfangfoom mysterio dormammu >;
    my @chunks = ( 1, 2, 3, 4, 5 );
    .say for @monsters.rotor( @chunks ); 
    # (godzilla)
    # (wolfman blob)
    # (mothera garuda goldfish)
    # (thevoid spawn fingfangfoom mysterio)

    ## It's very tight, but leaves behind the "dormammu" unprocessed, because there aren't
    ## enough items to fill out the chunk.
}
