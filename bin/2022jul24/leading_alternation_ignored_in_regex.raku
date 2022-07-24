#!/usr/bin/env perl6
# 
# leading_alternation_ignored_in_regex.raku            24 Jul 2022 

use v6;

## Department of "I didn't know *that*":

# https://raku.org/archive/doc/design/apo/A05.html

# [Update: now we just ignore the first | if there's nothing before it so that you can say

say
 "triple" ~~ 
     /[
     | single
     | double
     | triple
     | home run
#     | 'home run'
     ]/;

# ｢triple｣


# But, there's a bug in this example

# Potential difficulties:
#     Space is not significant here; please use quotes or :s
#     (:sigspace) modifier (or, to suppress this warning, omit the
#     space, or otherwise change the spacing) at
#     /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul24/leading_alternation_ignored_in_regex.raku:19






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

