#!/usr/bin/env perl6
# 
# deepmap_bug_report.raku            30 Jun 2021 

use v6;
use Test;

## subject: deepmap can mangle hash structures rather than just modify values

## Goal: Add 10 to numeric value and preserve string name
my @data = (
    { val => 1, name => 'alpha', },
    { val => 2, name => 'beta',  },
    { val => 3, name => 'gamma', },
);

my @expected = (
    { val => 11, name => 'alpha', },
    { val => 12, name => 'beta',  },
    { val => 13, name => 'gamma', },
);

{ 
    my @new_data = @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });
    say @new_data;  
    # [{name => alpha, val => 11} {name => beta, val => 12} {name => gamma, val => 13} {name => delta, val => 14}]
    is-deeply( @new_data, @expected,
               "Testing that deepmap with explicit non-numeric pass-through works" );

}

{ 
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    say @new_data; # # [{val => 11} {name => 12} {val => 13} {name => 14}]
    is-deeply( @new_data, @expected,
               "Testing deepmap without explicit pass-through" );

}
