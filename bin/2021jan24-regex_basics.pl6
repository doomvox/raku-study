#!/usr/bin/env perl6
# 
# 2021jan24-regex_basics.pl6            24 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

{
    my $str = "DDDCCCBBBaaa000";
    my $pat = regex { aaa };
    $str ~~ $pat;
    say $/;    #  ｢aaa｣
    dd $/;
    #  Match $/ = Match.new(:orig("dddcccbbbaaa000"), :from(9), :pos(12))
    my Regex $subpat = regex { bbb };
    say "subpat: ", $subpat;
    my $pat2 = regex {:i $subpat aaa };
    $str ~~ $pat2;
    say "hm: ";
    say $/;

    # ｢bbbaaa｣
    #  subpat => ｢bbb｣
}

{
    my $str = "AAA";
    my $pat = regex { :i aaa };
    say $str ~~ $pat;  ## ｢AAA｣
}

{
    my $str = "AAAbbbCCCddd";
    my $pat = regex { :i $<fred>=( aaa ) bbb };
    say $str ~~ $pat;  
    # ｢AAAbbb｣
    #  fred => ｢AAA｣
}

{ 
    my $monster = "godzilla";
    my $result = $monster.subst('zil', 'ZIL');
    say $result;  # godZILla
}

{ 
    my $monster = "godzilla";
    my $result = $monster.subst('zil', 'ZIL').subst('la','LA');
    say $result;  # godZILLA
}
