#!/usr/bin/env perl6
# 
# callback_issue_demos.raku            15 Aug 2021 

use v6;

{
  my $string_thing_3  =  sub {  
      my $ret;
      say "---";
      if  $^a eq $^b  { # now we have $a and $b
          $ret = $^a;
      } else {
          $ret = $^a ~ $^b;
      }
      return $ret;
   };  
  say $string_thing_3.('hey', 'hey'); #   WEIRD: True   (wtf?)
  say $string_thing_3('hey', 'hey');  #   WEIRD: True   (wtf?)

#  say $string_thing_3.('hey', 'not_a_hey'); # 
  say "what??";

  # Too few positionals passed; expected 2 arguments but got 0
  #   in block  at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug15/callback_issue_demos.raku line 23  (( not 46? ))
}

## I was trying to contrive an example where you might use the
## placeholders inside a sub-block without first using them in
## the top level one.  Still throws the "Too many positionals":

# say "---";
# {
#     sub check_something { True; };  ## Stub routine, always true for now
#     my $cb = {  # Too many positionals passed; expected 0 or 1 arguments but got 2
#         if check_something() {
#             "$^a | $^b";
#         }
#     }
#     say $cb('godzilla','blob'); #  
# }

## Doing it like so works, of course:

{
    sub check_something { True; };
    my $cb = {  
        my $nada   = $^a ~ $^b;
        if check_something() {
            "$a | $b";
        }
    }
    say $cb('godzilla','blob'); #  godzilla | blob
}

