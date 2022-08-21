#!/usr/bin/env perl6
# 
# 11-modify_substr_via_subst.raku            21 Aug 2022 

use v6;


{
  my $str =<<'ENDSTR';
Look out honey, cause I'm using technology
FLAGGED: usage "honey"
Ain't got time to make no apology.
ENDSTR

  my $new_str = 
    de_sweeten( $str, 'respected colleague' );

 ($DEBUG) && say "---";
  say $new_str;

# Look out respected colleague, cause I'm using technology
# Ain't got time to make no apology.
# FLAGGED: usage "honey"
}

sub de_sweeten( $str, $fix ) {

