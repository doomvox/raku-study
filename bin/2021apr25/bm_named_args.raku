#!/usr/bin/env perl6
# 
# bm_named_args.raku            25 Apr 2021 

use v6;

sub genius(*%fried) { say %fried };
# genius( ha => 1, ho => 2, hum => 3 );
# ## Output: {ha => 1, ho => 2, hum => 3}

genius( ha => 1, ho => 2, hum => 3 );

{ha => 1, ho => 2, hum => 3}

# genius( {ha => 1}, {ho => 2}, {hum => 3} ); ## series of three hashes

## Too many positionals passed; expected 0 arguments but got 3
## in sub genius at <unknown file> line 1
## in block <unit> at <unknown file> line 1

genius( fred => {ha => 1}, george => {ho => 2}, ginger => {hum => 3} ); ## series of three hashes
# {fred => {ha => 1}, george => {ho => 2}, ginger => {hum => 3}}


say {ha => 1}.WHAT;  # (Hash)
say (ha => 1).WHAT;  # (Pair)

sub mission( *@tank ) {
    say @tank.WHAT;     # (Array)
    say @tank[0].WHAT;  # (Pair)
    .say for @tank };
mission( {ha => 1}, {ho => 2}, {hum => 3} ); 
# ha => 1
# ho => 2
# hum => 3

say "---";
mission( {ha => 1, gah => 0, blah => -1}, {ho => 2}, {hum => 3} ); 

# (Array)
# (Pair)
# ha   => 1
# blah => -1
# gah  => 0
# ho   => 2
# hum  => 3

## hashes get flattened when passed to slurpy arrays?  Hm.


## tricks to play with:
## (1)
##  sub church(*%fried, *@frab) { say %fried, @frab }

## (2)
# sub church($name, $excuse, *%fried, *@frab) { say %fried, @frab }
# church( "me", "dog ate it", ha => 3, ho => 2,  "this would end up in @frab", heh => 3 );

say "===";

my @a = ( %h1, %h2, %h3 );
my $some_hash = @a[1];

$some_hash.WHAT; # (Hash)
