#!/usr/bin/env perl6
# 
# binding_non_positional_to_add_sigil.raku            23 Oct 2022 

use v6;

{
    my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;

    # my @weird := 666;
    # Type check failed in binding; expected Positional but got Int (666)

    my %hash = whun => 1, tew => 2, thuree => 3;
    # my @weird := %hash;
    # Type check failed in binding; expected Positional but got Hash ({:tew(2), :thuree(3)...)

    # my @weird :=  (1, 2, 3).List;
    my @weird :=  (1, 2, 3);

    say @weird;
    say @weird.WHAT;  # (List)

}

{
    my $a := 6;  # constant
    my $b  = 6;  # variable

    multi sub mutable($ is rw) { True }
    multi sub mutable($) { False }

    say mutable($a); # False
    say mutable($b); # True
    say mutable(42); # False

}


{
    say "---";
    my @monsters_c   = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
    my @monsters_nc := < basilisk minotaur behemoth leviathan ziz chimera manticore >;

    multi sub mutable($ is rw) { True }
    multi sub mutable($) { False }

    say mutable( @monsters_c );   # False
    say mutable( @monsters_nc );  # False;


    dd( @monsters_c );

}
