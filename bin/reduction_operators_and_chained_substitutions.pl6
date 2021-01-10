#!/usr/bin/env perl6
# 
# reduction_operators_and_chained_substitutions.pl6            10 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;


# These two are equivalent: 
say [+] 1, 2, 3;                # OUTPUT: «6␤» 
say reduce &infix:<+>, 1, 2, 3; # OUTPUT: «6␤»





# ====
#  sheet of cheats, as of Thu  May 17, 2018  08:48  tango

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





# ===
# Author:  doom@kzsu.stanford.edu

