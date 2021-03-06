#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;
use Test;

# https://stackoverflow.com/questions/65853009/is-there-a-programmatic-way-to-elaborate-the-half-winds-in-raku/65878823#65878823

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

{ # bruce gray refactor of william micheals solution:
    my @intercard = @cardinal  Z~ @cardinal.rotate;
    my @pre_half  = @cardinal  Z~ @intercard;
    my @post_half = @intercard Z~ @cardinal.rotate;
    my @half      = flat zip @cardinal, @pre_half, @intercard, @post_half;
    14:40:06	 From Bruce Gray : @half .= map: {
        .trans( 'abcd' => 'NESW' )
        .subst( :g, / ^ (..) <same> (.) $ /, { $1 ~ $0 } )
        .subst( :g, /   (ES | WN)       $ /, { $0.flip } )
    };
}

{## trying to refactor the william michels solution:
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

    say "XXX";
    @c    = @cardinal;
    my @d3 = .push(.shift) with @c;  ## at last, I see what with is for.  As opposed to for.
    say "d3: ", @d3;  # d3: [d a b c]

    # bruce gray says given is better, with is to check definedness:
    my @d3b = .push(.shift) given @c;  
    say "d3b: ", @d3b; # d3b: [c d a b]

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
    my @new_intercard;
    for 0..3 -> $i  {
        push( @new_zip, @barrons[ $i ] => @barrons[ $i+1 ] );
        push( @new_flat_zip, ( @barrons[ $i ] , @barrons[ $i+1 ] ) );
        push( @new_intercard, ( @barrons[ $i ] ~ @barrons[ $i+1 ] ) );        
    }
    dd @new_zip;
    # Array @new_zip = [:a("b"), :b("c"), :c("d"), :d("a")]
    dd @new_flat_zip;
    # Array @new_flat_zip = [("a", "b"), ("b", "c"), ("c", "d"), ("d", "a")]
    say @new_flat_zip; # [(a b) (b c) (c d) (d a)]
    say @new_intercard; # [ad ba cb dc]

    ## just using rotate to rotate
    my @intercard = ( (@cardinal Z @cardinal.rotate(1) )>>.join ); # between cardinal
    say @intercard; # [ad ba cb dc]
    is-deeply( @new_intercard, @intercard, "Testing new way to get to intercard" );

#     my @doom_intercard;
#     push( @doom_intercard, ( @barrons[ $_ ] ~ @barrons[ $_+1 ] ) ) for 0..3;        
    my @doom_intercard.push( @barrons[ $_ ] ~ @barrons[ $_+1 ]  ) for 0..3;        

    is-deeply( @doom_intercard, @intercard, "Testing new way to get to intercard" );    

    # continuing with WM, but using doom_intercard
    my @pre_half  = ( (@cardinal Z @doom_intercard)>>.join ).flat;
    # using .rotate 
    my @post_half = ( @doom_intercard Z @cardinal.rotate(1) )>>.join;
    my @half = ( ( @cardinal Z @doom_intercard ).flat Z ( [Z] @pre_half, @post_half ).flat ).flat;
    dd @half;
    say @half;
    # [a aab ab abb b bbc bc bcc c ccd cd cdd d dda da daa]
    my @expected_raw_half = <a aab ab abb b bbc bc bcc c ccd cd cdd d dda da daa>;
    is-deeply( @half, @expected_raw_half, "Testing raw half");

    @half .= map( *.trans( "abcd" => "NESW" ) );
    @half .= map( { S:g/ <( (NE|ES|SW|WN)<same>(.) )> $ /$1$0/ } );
    @half .= map( *.subst(:g, "ES","SE") );
    @half .= map( *.subst(:g, "WN","NW") );
    say @half;
    # [N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]
    is-deeply( @half, @expected, "Testing doom refactoring" );
}
 
{ 
    # Bruce Gray solution (tight, but the ordering is a little off):
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
}

## Joseph Brenner: the rules about how the directions should
## be ordered suggests to me we want customized sort behavior...

## /home/doom/End/Cave/Perl6/bin/compass_rose_problem-sort.pl6
