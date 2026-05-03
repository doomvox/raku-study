#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hash.raku

my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @levels   =  (6,       5,       7,       8,         4,   3,       4); 
my %threats = @monsters Z=> @levels;

{
    my @stuff = ( 'description', 'quip', %threats );
    say @stuff;


    # (description quip leviathan => 8 behemoth => 7 ziz => 4 manticore => 4 basilisk => 6 minotaur => 5 chimera => 3)
    say @stuff.flat(:hammer);
    say @stuff[**];
}
