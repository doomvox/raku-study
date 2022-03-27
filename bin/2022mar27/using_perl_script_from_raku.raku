#!/usr/bin/env perl6
# 
# using_perl_script_from_raku.raku            27 Mar 2022 

use v6;

my $captured = run('/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar27/phasehunt_fullmoon.pl', :out).out.slurp.split("\n");

say $captured;





# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


