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
    say "subpat: ", $subpat;              ##  subpat: regex { bbb }
    my $pat2 = regex {:i $subpat aaa };
    say "---";
    say $str ~~ $pat2;               #  Nil
    my $match = $str ~~ $pat2;       
    say $match;                      #  (Any)
    say "---";

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

{

    ## Starting with examples from:
    ## https://docs.raku.org/language/grammars

    my regex works-but-slow { .+ q }
    my token fails-but-fast { .+ q }
    my $s = 'Tokens won\'t backtrack, which makes them fail quicker!';
    say so $s ~~ &works-but-slow; # True
    say so $s ~~ &fails-but-fast; # False
                                  # the entire string get taken by the .+ 

  ## Note that non-backtracking works on terms, that is, as the
  ## example below, if you have matched something, then you will
  ## never backtrack. But when you fail to match, if there is
  ## another candidate introduced by | or ||, you will retry to
  ## match again.

    my token tok-a { .* d  };
    my token tok-b { .* d | bd };
    say so "bd" ~~ &tok-a;        # OUTPUT: False
    say so "bd" ~~ &tok-b;        # OUTPUT: True

}
