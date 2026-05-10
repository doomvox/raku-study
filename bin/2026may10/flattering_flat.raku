#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flattering_flat.raku

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

}
