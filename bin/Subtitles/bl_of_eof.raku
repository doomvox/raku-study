#!/usr/bin/env raku
# 
# bl_of_eof.raku            18 May 2025 

use v6;

my $case1 = q:to/EOS1/;
Dummy text followed by blank lines

EOS1

my $case2 = 
  'Dummy text followed by no blank lines';

say "case1: ", $case1 ~~ /^(.*?)\n\n|$/;
say "case2: ", $case2 ~~ /^(.*?)\n\n|$/;


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

