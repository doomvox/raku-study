#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;

## william michels solution:

my @cardinal = <a b c d>;

my @doom_rot = @cardinal[1 .. *-1, 0];
say "dr: ", @doom_rot;            # dr: [(b c d) a]
my @doom_flat_rot = @cardinal[1..*-1,0].flat;
say "dfr: ", @doom_flat_rot;     # dfr: [b c d a]

my @c    = @cardinal;
my $last = @c.pop;
my @d    = @c.unshift($last);
say "d: ", @d;  #  [d a b c]

@c    = @cardinal;
my @d2 = @c.unshift(@c.pop);
say "d2: ", @d2;


my @doom_introspection = @cardinal Z @cardinal[1..*-1,0].flat;
say @doom_introspection; # [(a b) (b c) (c d) (d a)]

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




