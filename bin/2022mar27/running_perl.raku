#!/usr/bin/env perl6
# 
# running_perl.raku            27 Mar 2022 

use v6;


# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar27/phasehunt_fullmoon.pl



my $captured = run('/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar27/phasehunt_fullmoon.pl', :out).out.slurp;

say $captured;





# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


