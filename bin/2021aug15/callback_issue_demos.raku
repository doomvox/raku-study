#!/usr/bin/env perl6
# 
# callback_issue_demos.raku            15 Aug 2021 

use v6;

# {
#   my $string_thing_0  = sub {
#       return "$^a | $^b";
# #      return "$^b | $^a";
#     };  
#   say $string_thing_0('hey ', 'there'); # hey  | there
# }

# {
#   my $string_thing_1  =  {  ## not a sub, a block
#       "$^a | $^b";          ## can't use return
#     };  
#   say $string_thing_1('hey ', 'there'); # hey  | there
# }

# {
#   my &string_thing_2  =  {  ## sigil & not $
#       "$^a | $^b";          ## 
#     };  
#   # both of these forms work
#   say &string_thing_2('hey ', 'there'); # hey  | there
#   say string_thing_2('hey ', 'there');  # hey  | there

#   say gerund_eater( &string_thing_2 );  # al | pha
#   sub gerund_eater ($thing) {
#       return $thing.('al', 'pha');
#   }

#   say gerund_eater( string_thing_2 );  # al | pha
#   # Too few positionals passed; expected 2 arguments but got 0
# }

say "===";

{
  my $string_thing_3  =  sub {  
      my $ret;
      say "here we go";
      if  $^a eq $^b  {
          $ret = $^a;
      } else {
          $ret = $^a ~ $^b;
      }
      return $ret;
    };  
  say $string_thing_3.('hey', 'hey'); # 
#  say $string_thing_3.('hey', 'not_a_hey'); # 
  say "what??";

  # Too few positionals passed; expected 2 arguments but got 0
  #   in block  at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug15/callback_issue_demos.raku line 23  (( not 46? ))

}

