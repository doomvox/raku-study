#!/usr/bin/env raku
# 
# broken_a_is_for_airity.raku            25 Aug 2024 

use v6;


multi talk_to_me ( $a ) {
  say "we got ONE argument";
}

multi talk_tof_me ( $a ) {
  say "we got JUST ONE arg again";
}

# multi talk_to_me ( *@args ) {
#    say "looks like more than two args";
# }

talk_to_me( "hey" );  
talk_to_me( "ho" );

# talk_to_me( "hey", "ho", "let's go" );


# we got ONE argument
# we got ONE argument



