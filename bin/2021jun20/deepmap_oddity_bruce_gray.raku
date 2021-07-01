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
    my %ds1  = ( level_1 => { level_2 => 9 });
    my %n1   = %ds1.deepmap({ $_ * 0.5 if $_ ~~ Numeric  });
    my %exp1 = ( level_1 => { level_2 => 4.5 });
    is-deeply( %n1, %exp1, "Testing that numeric value two levels deep was modified" );
    
    my %ds2 = ( level_1 => { level_2 => 'nine' });
#    my %n2 = %ds2.deepmap({ $_ * 0.5 if $_ ~~ Numeric  });
#    #      got: ${:level_1(${})}
    my %n2 = %ds2.deepmap({ $_ ~~ Numeric ?? $_ * 0.5 !! $_ });
    my %exp2 = ( level_1 => { level_2 => 'nine' });
    is-deeply( %n2, %exp2, "Testing that string value two levels deep was NOT modified" );
}

{
    say "===";
    my @stuff = ( 'six', 6,  'five', '5',  'four', 4 );
    my @mod = @stuff.deepmap({ $_ ~~ Numeric ?? $_+1 !! $_ });
    say @mod; # [7 six 5 five 5 four]
    my @mod2 = @stuff.deepmap({ .Numeric ?? $_+1 !! $_ });
    say @mod2; # [7 six 6 five 5 four]
}
