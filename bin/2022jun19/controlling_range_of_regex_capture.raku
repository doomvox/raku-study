#!/usr/bin/env perl6
# 
# controlling_range_of_regex_capture.raku            19 Jun 2022 

use v6;


# raku's '<(' and ')>' control the range of the default capture

# perl5's \K is to "keep" the part in front and substitute the remainder
# $str =~ s{ $prefix_pat \K this }{that}xms;
# \K is like <(,  )> has no perl equivalent


{
    ## zoffix example, 2018 talk
    my regex quoted { \" <( <-["]>+ )> \" }  

    my $str = q{The "rain" in Spain sprains the brain.};
    say $str;

    # change the quoted string, but leave quotes alone (or so I thought...)
    say $str ~~ s/<quoted>/refrain/;

    say $str; # The refrain in Spain sprains the brain.
    # Note: refrain is *not* quoted.  Is this a BUG?

}

{
    # try again with .subst
    my regex quoted { \" <( <-["]>+ )> \" }  

    my $str = q{The "rain" in Spain sprains the brain.};
    say $str;  
    # The "rain" in Spain sprains the brain.

    # change the quoted string, but leave quotes alone (or so I thought...)
    # $str.subst('<quoted>', 'refrain');
    $str.subst(/<quoted>/, 'refrain');
    say $str; # The "rain" in Spain sprains the brain.
    # So that doesn't match at all?  

    # Oh:
    my $new_str = $str.subst(/<quoted>/, 'refrain');
    say $new_str;
    # The refrain in Spain sprains the brain.
    # So, still got bug.
}


{ # Simple example from the docs, works as advertised: 
  say 'abc' ~~ / a <( b )> c/;            # ｢b｣

  # As does this rather weirdzo example:
  say 'abc' ~~ / <(a <( b )> c)>/;        # ｢bc｣

  #  ... they are actually independent of each other, the inner-most
  #  start point wins (the one attached to b) and the outer-most end
  #  wins (the one attached to c).

  # Okaaay.  (Why doesn't it try to match on a literal ")>"?)
  # 
  # Anyway: only one set of these braces makes sense, don't try to nest them.
}
