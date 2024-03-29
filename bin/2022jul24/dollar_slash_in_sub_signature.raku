#!/usr/bin/env perl6
# 
# dollar_slash_in_sub_signature.raku            23 Jul 2022 

use v6;

# I sometimes see this in code examples:
#   sub dostuff ($/) { ... }
# 
# This lets you pass in the $/ from the outer scope 

my $str = q:to/END/;
  With the Power of your Ancestor
  Grant the prayer of your followers, 
  Arise and Show Your Power
END

{
    # double checking: variable defined in outer scope is visible in inner
    my $word = "Bird";
    speak_to_me();
    sub speak_to_me {
        say "What is the word?";
        if ($word) {
            say "$word is the word";
        }
    }
  # What is the word?
  # Bird is the word
}


{
    if ( $str ~~ /P.*?»/ ) { # looking for a word beginning with "P"
        say $/; # ｢Power｣
    };   

    echo_match();
    sub echo_match {
        say $/;
        dd $/;
    }
    # Nil
    # Nil $/ = Nil

    # perl brain says the outer $/ should be visible in the sub
    # the raku docs say otherwise:
    #   $/ is the match variable. A fresh one is created in every routine. 
    # https://docs.raku.org/syntax/$$SOLIDUS
}

{
    say "---";
    if ( $str ~~ /P.*?»/ ) {
        say $/; # ｢Power｣
    };   

    echo_match($/);
    # ｢Power｣
    # Match.new(:orig("  With the Power of your Ancestor\n  Grant the prayer of your followers, \n  Arise and Show Your Power\n"), :from(11), :pos(16))

    sub echo_match($/) {
        say $/;
        dd $/;
    }
}


# Messing around with assigning to $/;
{
    if ( $str ~~ /S.*?»/ ) { 
        say $/; # ｢Show｣
    };   
    say $/;  # ｢Show｣
    my $ye_olde_match = $/;
    say $/.WHAT; # (Match)
    $/ = Nil;
    say $/;      # Nil 
    say $/.WHAT; # Nil

    $/ = Match.new();
    say $/.WHAT; # (Match)
    say $/;      # ｢｣
    }

# Q; can you change the value of $/ in the outer scope?  Not by default:
# {
#     say "---";
#     if ( $str ~~ /P.*?»/ ) {
#         say $/; # ｢Power｣
#     };   

#     re_match($/);
#     sub re_match($/) {
#         if ( $str ~~ /S.*?»/ ) { # Cannot assign to a readonly variable or a value
#             say $/; # ｢Show｣
#         };   
#     }
#     say $/;
# }


# the sub can only change $/ if it's explicitly "is rw"
{
    say "---";
    if ( $str ~~ /P.*?»/ ) {
        say $/; # ｢Power｣
    };   

    re_match($/);
    sub re_match($/ is rw) { # or "is copy"
        if ( $str ~~ /S.*?»/ ) { # Cannot assign to a readonly variable or a value
            say $/; # ｢Show｣
        };   
    }
    say $/; # ｢Show｣
}


## This example in the docs does not use "is rw":
##   https://docs.raku.org/type/Match#routine_make
#
# method my-action ($/) {
#     make "foo: $/";
# }

# Q: then, setting the "payload" via make does not count as modifying $/  
