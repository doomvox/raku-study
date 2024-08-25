#!/usr/bin/env raku
# 
# broken_a_is_for_airity.raku            25 Aug 2024 

use v6;


multi talk_to_me ( $a ) {
  say "we got ONE argument";
}

multi talk_to_me ( $a, $b ) {
  say "we got TWO arguments";
}

multi talk_to_me ( *@args ) {
   say "looks like more than two args";
}


talk_to_me( "hey" );  
talk_to_me( "hey", "ho" );

# talk_to_me( "hey", "ho", "let's go" );


# we got ONE argument
# we got TWO arguments
# looks like more than two args

