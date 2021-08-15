#!/usr/bin/env perl6
# 
# classic_arrays.raku            15 Aug 2021 

use v6;

## In which I review using arrays/lists/etc with object classes
## and try to pin down whatever it is that keeps tripping up my
## perl-damaged brain.

{ my @nothing  = < nada nope bupkes >;
  say @nothing;         # [nada nope bupkes]
  say @nothing[2];      # bupkes

  my @sweet = @nothing;
  say @sweet;           # [nada nope bupkes]   (( wait, that worked? ))

  my @zero = < zero zip zed >;
  my @nihilism = @nothing, @zero;
  say @nihilism;        # [[nada nope bupkes] [zero zip zed]]

  my @all_nothing = flat @nothing, @zero;
  say @all_nothing; # [nada nope bupkes zero zip zed]

  my @all_nothing_too = | @nothing, | @zero;
  say @all_nothing_too; # [nada nope bupkes zero zip zed]
}








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

