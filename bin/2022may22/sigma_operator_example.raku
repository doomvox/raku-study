#!/usr/bin/env perl6
# 
# sigma_operator_example.raku            22 May 2022 

use v6;


# https://docs.raku.org/language/optut

{
    # general operator to sum n numbers 
    sub prefix:<Σ>( *@number-list ) {
        say '>>>: ', @number-list.raku;
        [+] @number-list
    }
    
    say Σ (13, 16, 1); # OUTPUT: 30

    # Q: are the parens necessary?
    # A: yes, but the behavior without them is weird:  string concat?
    say Σ 13, 16, 1; # OUTPUT: 13161

    # what's happening: sigma sucks up the 13, returns 13,  but 16, 1 gets seen by say
}

{
  ## Messing around trying to understand the above...

  # Q: could it be the [+] construct?  A: no
  # say [+] ("a", "b");
  # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏a' (indicated by ⏏)
    say [+] (2, 7); # OUTPUT: 9

  # Q: maybe happens before passing
  say 13, 16, 1; # OUTPUT: 13161

#   my $n = 13, 16, 1;
#   say $n;  # OUTPUT: 13
#   # Now *that's the kind of breakage I expect, albiet with warnings:
#     # WARNINGS for /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022may22/sigma_operator_example.raku:
#     # Useless use of constant integer 1 in sink context (lines 31, 31)
#     # Useless use of constant integer 16 in sink context (lines 31, 31)

}


say "===";
{
    # general operator to sum n numbers 
    sub prefix:<Σ>( *@number-list ) {
        [+] @number-list
    }
    
    say Σ (13, 16, 1); # OUTPUT: 30

    # Q: are the parens necessary?
    # A: yes, but the behavior without them is weird:  string concat?
    say Σ 13, 16, 1; # OUTPUT: 13161

}
