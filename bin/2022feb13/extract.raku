#!/usr/bin/env perl6
# 
# extract.raku            13 Feb 2022 

use v6;

my $libra = '♎';
say $libra, ": ", ord( $libra );
# ♎: 9806

my $what = '️'; # VS16?
say $what, ": ", ord( $what );

# Malformed initializer
# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022feb13/extract.raku:9
# ------> my $what =⏏ '️'; # VS16?
#     expecting any of:
#         prefix
#         term



# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒

# use DBIish;
# my $dbh = DBIish.connect("Pg", database => 'doom', :user<doom>, :port<5434>);

# my $sth = $dbh.prepare(q:to/STATEMENT/);
#     SELECT * FROM funked_up
# STATEMENT

# $sth.execute();
# my @rows = $sth.allrows();



# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

