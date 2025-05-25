#!/usr/bin/env raku
# 
# list_and_List.raku            25 May 2025 

use v6;

{
    my $thing = ('godzilla', 'grendel', 'wormface', 'blob');

    say $thing.WHAT;  # (List)

    my $another_thing = $thing.list;
    my $still_another_thing = $thing.List;

    say $another_thing.WHAT;          # (List)
    say $still_another_thing.WHAT;    # (List)
}

{
    my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

    my $t1 = @monsters.list;
    my $t2 = @monsters.List;

    say $t1.WHAT;  # (Array)
    say $t2.WHAT;  # (List)


    say $t1[3];  # damis
    say $t2[3];  # damis

    $t1[3] = 'the blob';
    $t2[3] = 'paul graham';
    # Cannot modify an immutable List ((ankou araxxor borro...)
    #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025may25/list_and_List.raku line 33

    }
