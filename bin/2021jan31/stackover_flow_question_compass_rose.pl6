#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;
use Test;


my @expected = <N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW>;
say @expected;

## william michels solution:
{
    my @cardinal = <a b c d>;
    my @intercard = ( (@cardinal Z @cardinal[1..*-1,0].flat )>>.join ); #between cardinal
    my @pre_half  = ( (@cardinal Z @intercard)>>.join ).flat;
    my @post_half = ( @intercard Z @cardinal[1..*-1,0].flat )>>.join;

    my @half = ( ( @cardinal Z @intercard ).flat Z ( [Z] @pre_half, @post_half ).flat ).flat;
    say @half;
    # [a aab ab abb b bbc bc bcc c ccd cd cdd d dda da daa]

    @half .= map( *.trans( "abcd" => "NESW" ) );
    @half .= map( { S:g/ <( (NE|ES|SW|WN)<same>(.) )> $ /$1$0/ } );
    @half .= map( *.subst(:g, "ES","SE") );
    @half .= map( *.subst(:g, "WN","NW") );
    say @half;
    # [N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]

    is-deeply( @half, @expected, "Testing WM solution" );
}


{## refactoring william michels solution:
    say "===";
    my @cardinal = <a b c d>;

    my @expected_rot = <b c d a>;
    my @check_rot = @cardinal[1..*-1,0].flat;
    say @check_rot;

    ## looking at alternate methods of doing a rotate
    my @doom_rot = @cardinal[1 .. *-1, 0];
    say "dr: ", @doom_rot;            # dr: [(b c d) a]
    my @doom_flat_rot = @cardinal[1 .. *-1, 0].flat;
    say "dfr: ", @doom_flat_rot;     # dfr: [b c d a]

    my @c    = @cardinal;
    my $last = @c.pop;
    my @d    = @c.unshift($last);
    say "d: ", @d;  #  [d a b c]

    @c    = @cardinal;
    my @d2 = @c.unshift(@c.pop);
    say "d2: ", @d2;

    @c    = @cardinal;
    my @d3 = .push(.shift) with @c;  ## at last, I see what with is for.  As opposed to for.
    say "d3: ", @d3;  # d3: [d a b c]

    @c    = @cardinal;
    my @d4 = @c.rotate(1);
    say "d4: ", @d4;  # d4: 
    is-deeply( @d4, @expected_rot, "Checking intermediate value rotated list: " ~ @d4.gist );

    ## examining the zip: gets pairs of current and next element
    my @expected_zip = ( <a b>, <b c>, <c d>, <d a> );
    my @doom_zip = @cardinal Z @cardinal[1..*-1,0].flat;
    say @doom_zip; # [(a b) (b c) (c d) (d a)]
    is-deeply( @doom_zip, @expected_zip, "Testing list of current and next values paired as sub-lists: " ~ @doom_zip.gist);
    ## Q: what if we used Pairs?

    my @barrons = < a b c d a >; ## note extra val.  
    my @new_zip;
    my @new_flat_zip;
    for 0..3 -> $i  {
        push( @new_zip, @barrons[ $i ] => @barrons[ $i+1 ] );
        push( @new_flat_zip, ( @barrons[ $i ] , @barrons[ $i+1 ] ) );
    }
    dd @new_zip;
    # Array @new_zip = [:a("b"), :b("c"), :c("d"), :d("a")]
    dd @new_flat_zip;
    # Array @new_flat_zip = [("a", "b"), ("b", "c"), ("c", "d"), ("d", "a")]
    say @new_flat_zip; # [(a b) (b c) (c d) (d a)]

    ## just using rotate to rotate
    my @intercard = ( (@cardinal Z @cardinal.rotate(-1) )>>.join ); # between cardinal
    is-deeply( @new_flat_zip, @intercard, "Testing new way to get to first zip" );
    my @pre_half  = ( (@cardinal Z @intercard)>>.join ).flat;

    ## again, rotate 
    # my @post_half = ( @intercard Z @cardinal[1..*-1,0].flat )>>.join;
    my @post_half = ( @intercard Z @cardinal.rotate(-1) )>>.join;

    my @half = ( ( @cardinal Z @intercard ).flat Z ( [Z] @pre_half, @post_half ).flat ).flat;
    say @half;
    # [a aab ab abb b bbc bc bcc c ccd cd cdd d dda da daa]

    @half .= map( *.trans( "abcd" => "NESW" ) );
    @half .= map( { S:g/ <( (NE|ES|SW|WN)<same>(.) )> $ /$1$0/ } );
    @half .= map( *.subst(:g, "ES","SE") );
    @half .= map( *.subst(:g, "WN","NW") );
    say @half;
    # [N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]
    is-deeply( @half, @expected, "Testing doom refactoring" );
}

#===
# Bruce Gray stab at it (ordering a little off):
#  raku -e 'say flat <N E S W N>.rotor(2 => -1).map: { (.[[0,], [0,0,1], [0,1], [1,0,1]])>>.join };' 

say '---';
say flat <N E S W N>.rotor(2 => -1).map: { (.[[0,], [0,0,1], [0,1], [1,0,1]])>>.join };
# bruce gray result:
# (N NNE NE ENE E EES ES SES S SSW SW WSW W WWN WN NWN)
# compared to Bill's:
# [N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]
#                 ^^^ ^^ ^^^                ^^^ ^^ ^^^

say flat <N NE E SE S SW W NW N>.rotor(3 => -1).map: { (.[[0,], [0,1], [1,], [2,1] ])>>.join };
# (N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW)


## Joseph Brenner: the rules about how the directions should
## be ordered suggests to me we want customized sort behavior...
