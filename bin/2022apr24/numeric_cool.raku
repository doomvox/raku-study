#!/usr/bin/env perl6
# 
# numeric_cool.raku            24 Apr 2022 

use v6;

my Numeric(Cool) $n_ish;
my Numeric $n;

$n_ish = 6;
say $n_ish;
$n = 6;
say $n;

say "===";
$n_ish = "6";
say $n_ish;
# $n = "6";
# say $n;
# # Type check failed in assignment to $n; expected Numeric but got Str ("6")
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022apr24/numeric_cool.raku line 18

say "===";
# $n_ish = "six";
# say $n_ish;
# # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏six' (indicated by ⏏)



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

