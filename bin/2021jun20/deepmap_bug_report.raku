#!/usr/bin/env perl6
# 
# deepmap_bug_report.raku            30 Jun 2021 

use v6;

## subject: deepmap can mangle hash structures rather than just modify values

## Goal: Add 10 to numeric value and preserve string name 
my @data = (
    { value => 1, name => 'alpha', },
    { value => 2, name => 'beta',  },
    { value => 3, name => 'gamma', },
    { value => 4, name => 'delta', },
);

my @expected = (
    { value => 11, name => 'alpha', },
    { value => 12, name => 'beta',  },
    { value => 13, name => 'gamma', },
    { value => 14, name => 'delta', },
);

{ 
    my @new_data = @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });
    say @new_data;
    is-deeply( @new_data, @expected,
               "Testing that deepmap with explicit non-numeric pass-through works" );

}

{ 
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    say @new_data;
    is-deeply( @new_data, @expected,
               "Testing deepmap without explicit pass-through" );

}
