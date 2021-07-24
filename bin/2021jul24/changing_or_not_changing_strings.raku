#!/usr/bin/env perl6
# 
# changing_or_not_changing_strings.raku            24 Jul 2021 

use v6;

my $stringy = "dingy";
$stringy ~~ s/ing/ork/;
say $stringy;

my $unstrung = | $stringy;
$unstrung ~~ s/ing/org/;
say $unstrung;


my $stang := "dingy";  
# $stang ~~ s/d/st/;          #  Cannot modify an immutable Str (dingy)
say $stang;


my $new = $stang ~~ S/d/st/;
say $new;



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

