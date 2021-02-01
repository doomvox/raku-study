#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;

## william michels solution:

my @cardinal = <a b c d>;

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
my @d3 = .unshift(.pop) with @c;
say "d3: ", @d3;  # d3: [d a b c]

@c    = @cardinal;
my @d4 = @c.rotate(-1);
say "d4: ", @d4;  # d4: 


my @doom_introspection = @cardinal Z @cardinal[1..*-1,0].flat;
say @doom_introspection; # [(a b) (b c) (c d) (d a)]

# my @intercard = ( (@cardinal Z @cardinal[1..*-1,0].flat )>>.join ); #between cardinal
my @intercard = ( (@cardinal Z @cardinal.rotate(-1) )>>.join ); #between cardinal

my @pre_half  = ( (@cardinal Z @intercard)>>.join ).flat;

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
