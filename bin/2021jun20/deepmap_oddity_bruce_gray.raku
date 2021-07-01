#!/usr/bin/env perl6
# 
# deepmap_oddity_bruce_gray.raku            20 Jun 2021 

use v6;

my @level_color =
{ level => 9, color => 'green', },
{ level => 6, color => 'multi', },
{ level => 5, color => 'brown', },
{ level => 0, color => 'brown', },
;

# my @remunged = @level_color.deepmap({ say .raku; $_ ~~ Numeric ?? $_+12 !! $_ });
my @remunged = @level_color.deepmap({ $_+12 if $_ ~~ Numeric });
# my @remunged = @level_color.deepmap({ $_ ~~ Numeric ?? $_+12 !! Empty });
# my @remunged = @level_color.deepmap({ say .raku; $_ ~~ Numeric ?? $_+12 !! 'z' });

say '---';
say .raku for @remunged; 
say '===';
use Test;
{
    my %ds1 = ( level_1 => { level_2 => 9 });
    %ds1.deepmap{{ $_ * 0.5 if $_ ~~ Numeric  }};
    my %exp1 = ( level_1 => { level_2 => 4.5 });
    is-deeply( %ds1, %exp1, "Testing that numeric value two levels deep was modified" );
    
    my %ds2 = ( level_1 => { level_2 => 'nine' });
    %ds2.deepmap{{ $_ * 0.5 if $_ ~~ Numeric  }}
    %exp2 = ( level_1 => { level_2 => 'nine' });
    is-deeply( %ds2, %exp2, "Testing that string value two levels deep was NOT modified" );
}
