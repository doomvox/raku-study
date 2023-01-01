#!/usr/bin/env perl6
# 
# sequences_matching_and_dollar_slash.raku            01 Jan 2023 

use v6;

{
  my $obj = "8903" ~~ /9/;
  say $/;    # ｢9｣
  say $obj;  # ｢9｣
}

{
    say $/;  # ｢9｣
    # say $obj;  # error, not declared
}

{
    say 1 .. 3;  # 1..3
    say 1 ... 3; # (1 2 3)
    say 1 ...  * == "7";   # (1 2 3 4 5 6 7)
    say 1 ... /6/;         # (1 2 3 4 5 6)
    say 1 ... { $_ %% 3 }; # (1 2 3)
}

{
   say "---";  
   say 1 ... /3/;   # (1 2 3)
   say $/;          # ｢9｣   (not Nil?)
}

{
    say "---";
    my @s = 1, 2, 3;
    say @s ~~ 2  # False;
    ## smartmatch doesn't work as an "in"
}

{
   say /2/.WHAT; 

   my $seq = 1 ... 3;
   if $seq ~~ /2/ {
       say "we have found a 2 in the seq";
   }
   say $/; # Nil
}


# {
#     say 1 ... /9/;  # (1 2 3 4 5 6 7 8 9)
#     say $/;         # Nil
# }



## I was confused about $/ being visible across blocks, it's specific to routines, bg example:

# raku -e '{my $foo = "abcd"; $foo ~~ /b.d/;}; say $/;'
# ｢bcd｣
# raku -e 'sub foo ($s) {$s ~~ /b.d/; say $/;}; foo("abcd"); say $/;'
# ｢bcd｣
# Nil 
