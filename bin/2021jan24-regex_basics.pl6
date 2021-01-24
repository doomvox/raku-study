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
    say "===";

    ## Starting with examples from:
    ## https://docs.raku.org/language/grammars

    my regex works-but-slow { .+ q }
    my token fails-but-fast { .+ q }
    my $s = 'Tokens won\'t backtrack, which makes them fail quicker!';
    say so $s ~~ &works-but-slow; # True    # the entire string get taken by the .+ 
    say so $s ~~ &fails-but-fast; # False
                                  
    say $s ~~ &works-but-slow; # ｢Tokens won't backtrack, which makes them fail q｣
    say $s ~~ &fails-but-fast; # Nil
       
    my regex works-different { .+? q }
    say $s ~~ &works-different; # also works:   ｢Tokens won't backtrack, which makes them fail q｣

    ## Note that non-backtracking works on terms (( i.e. the '.*' in this example )), that is, as the
    ## example below, if you have matched something, then you will
    ## never backtrack. But when you fail to match, if there is
    ## another candidate introduced by | or ||, you will retry to
    ## match again.

    ## "alternation breaks the rachet" -- bruce gray

    my token tok-a { .* d  };
    my token tok-b { .* d | bd };
    say so "bd" ~~ &tok-a;        #  False
    say so "bd" ~~ &tok-b;        #  True

    my regex reg-a { .* d  };
    say so "bd" ~~ &reg-a;        #  True

    my rule rul-a { .* d  };
    say so "bd" ~~ &rul-a;        # False

    my rule rul-b {.*d};
    say so "bd" ~~ &rul-b;        # False

    my regex reg-b { .* d | bd };
    say "acbd" ~~ &reg-b;         #  ｢acbd｣

#     my regex reg-c { .* d || bd };
#     say "acbd" ~~ &reg-b;         # ｢acbd｣

    # first matching alternation wins (maybe)
    my regex reg-d { $<one>=( bd ) || $<two>=( .* d ) };
    say "acbd" ~~ &reg-d;         # ｢acbd｣   two => ｢acbd｣  ((WEIRD ONE))
    say "bdac" ~~ &reg-d;         #  ｢bd｣    one => ｢bd｣

    # longest token matching (maybe)
    my regex reg-e { $<one>=( bd ) | $<two>=( .* d ) };
    say "acbd" ~~ &reg-e;         #  two => ｢acbd｣
    say "bdac" ~~ &reg-e;         #  one => ｢bd｣


    my regex reg-f { $<two>=( .* d ) || $<one>=( bd )};
    say "acbd" ~~ &reg-f;         # 
    say "bdac" ~~ &reg-f;         # 


}
