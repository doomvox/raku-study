#!/usr/bin/env perl6
# 
# reduction_over_iteration.pl6            07 Feb 2021 

use v6;

## Make errors into warnings
##  CATCH { default { say "CAUGHT: ", .Str; .resume } }


my @rabbits  = < bugs peter easter >;
my $all ~= @rabbits; 
say "...$all..."; # ...bugs peter easter...

.say for @rabbits;
# bugs
# peter
# easter


say .[0] [~] .[1] for @rabbits.rotor(2);  # bugspeter




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





# ===
# Author:  doom@kzsu.stanford.edu

