#!/usr/bin/env perl6
# 
# dollar_slash_in_sub_signature.raku            23 Jul 2022 

use v6;

# I sometimes see this in code examples:
#   sub dostuff ($/) { ... }
# What does that do exactly?

my $str = q:to/END/;
  With the Power of your Ancestor
  Grant the prayer of your followers, 
  Arise and Show Your Power
END

{
    if ( $str ~~ /P.*?»/ ) {
        say $/; # ｢Power｣
    };   

    echo_match();
    # Nil
    # Nil $/ = Nil

    sub echo_match {
        say $/;
        dd $/;
    }

}

{
    say "---";
    if ( $str ~~ /P.*?»/ ) {
        say $/; # ｢Power｣
    };   

    echo_match($/);
    # Nil
    # Match.new(:orig("  With the Power of your Ancestor\n  Grant the prayer of your followers, \n  Arise and Show Your Power\n"), :from(11), :pos(16))

    sub echo_match($/) {
        say $/;
        dd $/;
    }

}
