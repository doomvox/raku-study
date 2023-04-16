#!/usr/bin/env raku
# 
# unixstackexchange_d_prob.raku            16 Apr 2023 

use v6;

raku -e 'my @a; for lines.join("\n").split(/ \n <?before DEG> /) { @a.push: %(.split("\n").[0].words.[2] => \
             .split("\n")[1..*].map(*.words[0,4])>>.map(*.subst( / (\d+) (<[+-]>) /, {$0 ~ "e" ~ $1} ).subst(/D/, "e") )>>.Num) };  \
             .raku.put for @a;'  file





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

