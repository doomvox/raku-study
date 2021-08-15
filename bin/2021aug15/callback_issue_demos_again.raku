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


{
    sub check_something { True; };

    my $cb = {  # Too many positionals passed; expected 0 or 1 arguments but got 2
        $^a; $^b;
        if check_something() {
            $a eq $b
        }
    }

    say $cb('godzilla','blob');
}
