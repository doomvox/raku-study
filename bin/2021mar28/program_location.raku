#!/usr/bin/env perl6
# 
# program_location.raku            29 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

say $*PROGRAM;
## "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/program_location.raku".IO

say $*PROGRAM-NAME;

{ 
    my $l = $*PROGRAM;
    .say for $l.^methods>>.name;
    say "works, but deprecated: ", $*PROGRAM.chdir('..');

    my $new_l = $*PROGRAM.chdir('..');
    $new_l;
    chdir $new_l;

    say ".add method seems to act on the full path to program including the script name";
    my $loc = $*PROGRAM.add('..');
    say $loc;
    ## "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/program_location.raku/..".IO

    ## This won't work, file doesn't exist
    ## chdir( $loc );
}

{
    my $dir = $*PROGRAM.dirname;
    say $dir;
    chdir( $dir );

    ## my $new_dir = $dir.add('../..');
    ## No such method 'add' for invocant of type 'Str'

}
