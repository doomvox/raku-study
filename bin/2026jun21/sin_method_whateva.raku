#!/home/doom/End/Cave/Raku/bin/raku_gh
##   that's a recent build from github: v2026.04-47-g386eb023d


{
    my $str = "abc";
#    say $str.sin;
#    # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏abc' (indicated by ⏏)

}

{
    my @a = <a b c d>;
    say @a.sin;  # -0.7568024953079282

}


{
    my @a = "a" x 3;
    say @a; # [aaa]
    
    my @a = "a" xx 3;
    say @a; # [a a a]
}
