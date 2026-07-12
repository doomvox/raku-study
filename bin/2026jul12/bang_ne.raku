#!/home/doom/End/Cave/Raku/bin/raku_gh

## use v6.e.PREVIEW;

# https://github.com/rakudo/rakudo/issues/3748


# jnthn  Aug 24, 2020:

# > lizmat:

# >>    I'd say they're more cultural expectations than huffmanization,
# >>    as prefixing any infix op with a ! is a special thing of Raku,
# >>    afaik.

# > Yes, I think it's the bigger factor; I recall Larry noting (I'm
# > heavily paraphrasing) that while regularity (everything via the !
# > metaop) would in some ways be nice, forcing everyone to write !eq
# > and !== would probably be a bit too counter-cultural. (I was gonna
# > say that it would have saved us this discussion, but of course
# > there'd have been 20 proposals to provide != and ne by now if we'd
# > gone that way... :-))


# This has me wondering about !ne

{
    my $n = 7;
    say so $n ==  7; # True
    say so $n eq  7; # True
    say so $n !== 7; # False
    say so $n ne  7; # False
    say so $n !ne 7; # True
}

say "===";
{
    my $n = '7';
    say so $n ==  7; # True
    say so $n eq  7; # True
    say so $n !== 7; # False
    say so $n ne  7; # False
    say so $n !ne 7; # True
}

say "===";
{
    my $n = '7';
    my $j = '6|7';
    say so $n ==  $j; # True
    say so $n eq  $j; # True
    say so $n !== $j; # False
    say so $n ne  $j; # False
    say so $n !ne $j; # True
}
