#!/usr/bin/env perl6
# 
# deepmap_bug_report.raku            30 Jun 2021 

use v6;
use Test;

## subject: deepmap can mangle hash structures rather than just modify values

## Goal: Add 10 to numeric value and preserve string name 
my @data = (
    { val => 1, lbl => 'alpha', },
    { val => 2, lbl => 'beta',  },
    { val => 3, lbl => 'gamma', },
    { val => 4, lbl => 'delta', },
);

my @expected = (
    { val => 11, lbl => 'alpha', },
    { val => 12, lbl => 'beta',  },
    { val => 13, lbl => 'gamma', },
    { val => 14, lbl => 'delta', },
);

{ 
    my @new_data = @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });
    say @new_data;  
    # [{lbl => alpha, val => 11} {lbl => beta, val => 12} {lbl => gamma, val => 13} {lbl => delta, val => 14}]
    is-deeply( @new_data, @expected,
               "Testing that deepmap with explicit non-numeric pass-through works" );

}

{ 
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    say @new_data; # # [{val => 11} {lbl => 12} {val => 13} {lbl => 14}]
    is-deeply( @new_data, @expected,
               "Testing deepmap without explicit pass-through" );

}
