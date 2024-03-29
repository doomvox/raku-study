#!/usr/bin/env perl6
# 
# matching_not_a_dot.raku            12 Mar 2022 

use v6;

{
   
    # This pattern works, matches anything but a dot
    my $not_a_dot = rx/  < -[\.] >  /;

    # I kept thinking this would work for that:
    my $dash_and_dot = rx/  < [-\.] >  /;

}

{
    my $str1 = '.';
    my $str2 = 'a';

    my $pat1 = rx/  <-[\.]>  /;
    say so $str1 ~~ $pat1;  # False
    say so $str2 ~~ $pat1;  # True

    my $p = rx/\./;
    say so '.' ~~ $p;  # True
    say so 'a' ~~ $p ; # False

    $p = rx/a/;
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True


    $p = rx/<-[a]>/;
    say so '.' ~~ $p;  # True
    say so 'a' ~~ $p ; # False

    $p = rx/<-[.]>/;  # matches anything not-a-dot
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True

    $p = rx/<-[\.]>/; # also matches anything not-a-dot
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True

    ## double-checking it's not also not-a-backwhack
    say so '\\' ~~ $p;  # True
    say '\\'.elems;     # 1

}

say "---";
my $full = "/home/doom/tmp/stuff.fur.txt";
my $base = $full.IO.basename;
my $ext = $full.IO.extension;
say "ext: $ext";
{
    my $result = $base.subst(/\. .*? $ /,'');  ## fooled by a second dot in base
    say $result;  #  stuff    should be: "stuff.fur"
}

{
    my $result = $base.subst(/\. <-[.]>*? $ /,'');  
    say $result; # stuff.fur
}

## Next: is there another raku way?  Adjust greediness, match from end, etc?
## Could use length of $ext to do a substr operation (or equiv)
