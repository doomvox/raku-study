#!/usr/bin/env perl6
# 
# subst_again.pl6            22 Nov 2020 

use v6;

my @numbs = < one two three >;

say @numbs;
my @ret = @numbs.subst( /o/, 'O' );

say @ret; # [One two three]

## adverbs can go in last place:
@ret = @numbs.subst( /o/, 'O', :g );
say @ret; # [One twO three]

## adverbs can also go in first place:
@ret = @numbs.subst( :g, /o/, 'X' );
say @ret; # [Xne twX three]

## how about in the middle?  Yup:
@ret = @numbs.subst(  /o/,  :g, 'W' );
say @ret;  # [Wne twW three]

## Using a quoted string as first arg also works 
## (could've sworn I had a problem with that...)
@ret = @numbs.subst( 'o', '!!!O' );
say @ret;  # [!!!One two three]

@ret = @numbs.subst( /ee+/, 'EEEEEEE' );
say @ret; # [one two thrEEEEEEE]

## Using two adverbs together
@ret = @numbs.subst( /<[oe]>+/, '⏏', :i :g );  ## U-23CF
say @ret; # [⏏n⏏ tw⏏ thr⏏]

## putting a comma between two adverbs does the same thing
@ret = @numbs.subst( /<[oe]>+/, '⏏', :i, :g );  ## U-23CF
say @ret; # [⏏n⏏ tw⏏ thr⏏]

## interestingly, this does nothing:
@ret = @numbs.subst( /<[OE]>+/, '⏏', :i :g );  ## U-23CF
say @ret; # [one two three]
## so, the mnemonic that :i means "case-insensitive" isn't quite right
