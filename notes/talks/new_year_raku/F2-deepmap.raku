#!/usr/bin/env perl6
# 
# F2-deepmap.raku            05 Jan 2022 

use v6;

{
    ## a simple example of using deepmap on nested arrays: add one to all
    # https://docs.raku.org/routine/deepmap
    say [ [1,2,3], [ [4,5], 6, 7 ] ].deepmap( * + 1 );  
    ##  [[2 3 4] [[5 6] 7 8]]
    
    ## Note: that '*' is the "whatever" star... I'm more inclined to just do this:
    say [ [1,2,3], [ [4,5], 6, 7 ] ].deepmap({ $_ + 1 });  
}

## deepmap on an array of hashes
## Goal: Add 10 to numeric value 'n' and preserve string lable 'l'
my @data = (
    { n =>   1,   l => 'ape',   },
    { n =>   2,   l => 'bear',  },
    { n =>   3,   l => 'goat',  },
    { n =>  '4',  l => 'emu',   },
);
{ 
    # this works:
    my @new_data = @data.deepmap({$_ ~~ .Numeric ?? $_+10 !! $_ });
    say @new_data;  
    ## [{l => alpha, n => 11} {l => beta, n => 12} {l => gamma, n => 13} {l => gamma, n => 14}]
    ## Note that '4' becomes '14'
}
{
    # but this behaves weird (have filed bug):
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    say @new_data;  
    ## [{l => IterationEnd, n => 11} {l => IterationEnd, n => 12} {l => 13, n => IterationEnd} {l => IterationEnd, n => IterationEnd}]
    # might expect it to drop the "l" fields, might expect it to pass them through...
    # instead it mangles everything, scrambling keys and values
}

## moral: deepmap is cool, but for now, for *every* element specify 
##        the behavior you want, including "passthrough unchanged"

## And this just acts on just one complex data-structure not two as with my perl Data::Math.
## 
## Note: 'deepmap' suggested the name 'dualmap' for a Raku version of Data::Math 
