#!/usr/bin/env perl6
# 
# eban_number_challenge.raku            30 Jan 2022 

use v6;

# Rob Ransbottom has a side-issue playing with the Eban Numbers weekly challenge:

my @eban = [<2 4 6 > ], # george
[<3 4 5 6 0 >], # alex
# Enough already, but generalizing.
[<0 >], # benny
[<2 4 6>], # georgeish
[<3 4 5 6 0>], # alexish
[<2 4 6>], # woody
# The preceding 3 lines could be 'xx 6'.
# What syntax?!
# Chose Array as rw. List for convenience
# of entry.
; 





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

