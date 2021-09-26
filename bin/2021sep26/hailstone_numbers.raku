#!/usr/bin/env perl6
# 
# hailstone_numbers.raku            26 Sep 2021 

use v6;

## Bruce Gray

sub hailstone($n) { $n, { $_ %% 2 ?? $_ div 2 !! $_ * 3 + 1 } ... 1 }
 
my @h = hailstone(27);
say "Length of hailstone(27) = {+@h}";
say ~@h;
 
my $m = max ( (1..99_999).race.map: { +hailstone($_) => $_ } );
say "Max length {$m.key} was found for hailstone({$m.value}) for numbers < 100_000";





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

