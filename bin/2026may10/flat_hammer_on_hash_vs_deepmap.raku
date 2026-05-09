#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hash.raku

my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @levels   =  (6,       5,       7,       8,         4,   3,       4); 
my %threats = @monsters Z=> @levels;

{
    my @stuff = ( 'xtra_string_1', 'xst2', %threats );
    say @stuff;
    # [xtra_string_1 xst2 {basilisk => 6, behemoth => 7, chimera => 3, leviathan => 8, manticore => 4, minotaur => 5, ziz => 4}]

    say "===";
    # flat hammer doesn't break-up pairs, passes them through with key and value:
    say @stuff.flat(:hammer);
    say @stuff[**];
    # (xtra_string_1 xst2 leviathan => 8 behemoth => 7 ziz => 4 manticore => 4 basilisk => 6 minotaur => 5 chimera => 3)

    say "===";
    for @stuff[**] -> $item { say $item.WHAT };
    # (Str)
    # (Str)
    # (Pair)
    # (Pair)
    # (Pair)
    # (Pair)
    # (Pair)
    # (Pair)
    # (Pair)

    say "===";
    ## deepmap descends through structure, getting to values without the keys
    @stuff.deepmap({.say});
    # xtra_string_1
    # xst2
    # 3
    # 5
    # 4
    # 4
    # 8
    # 7
    # 6


    say "===";
    @stuff[**]>>.kv.say;





}

