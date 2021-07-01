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
    my @mod = @stuff.deepmap({ $_ ~~ Numeric ?? $_+1 !! $_ });  # quoted 5 is not "Numeric"
    say @mod; # [six 7 five 5 four 5]
    my @mod2 = @stuff.deepmap({ .Numeric ?? $_+1 !! $_ });      # quoted 5 can *become* Numeric
    say @mod2; # [six 7 five 6 four 5]

    say "---";
    my @mod3 = @stuff.deepmap({ $_+1 if $_ ~~ Numeric });       # drops anything not Numeric
    say @mod3;  #  [7 5]    
}

{
    say "===";
    my @stuff = ( 'six', 6,  'five', '5',  'four', 4 );
    my @mod = @stuff.deepmap({ Nil }); 
    say @mod; # [(Any) (Any) (Any) (Any) (Any) (Any)]

    my %rabbits  = < bugs peter easter > X=>1;
    my %mod = %rabbits.deepmap({ Nil }); 
    say %mod; # {bugs => (Any), easter => (Any), peter => (Any)}

    my @mod2 = @stuff.deepmap({ Undef }); 
    say @mod2;
    my %mod = %rabbits.deepmap({ Undef }); 


}
