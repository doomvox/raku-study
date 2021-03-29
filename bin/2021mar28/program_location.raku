#!/usr/bin/env perl6
# 
# program_location.raku            29 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

say $*PROGRAM;
## "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/program_location.raku".IO

say $*PROGRAM-NAME;

my $l = $*PROGRAM;
.say for $l.^methods>>.name;
say "works, but deprecated: ", $*PROGRAM.chdir('..');

my $loc = $*PROGRAM.add('..');
say $loc;
chdir( $loc );
