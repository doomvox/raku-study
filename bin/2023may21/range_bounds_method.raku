#!/usr/bin/env raku
# 
# range_bounds_method.raku            21 May 2023 

use v6;

my $r1 = 1 .. 5;  # 1 <= $x <= 5 
my $r2 = 1^.. 5;  # 1 <  $x <= 5 

say $r1.bounds;
say $r2.bounds;
# (1 5)
# (1 5)

# bruce gray points out that the Range is *continuous*, not discrete (integers):

#   raku -e 'my Range $r = 1 ^..^ 5; say $_ ~~ $r for 1, 5, 6'
#   raku -e 'my Range $r = 1 ^..^ 5; say $_ ~~ $r for 1, 1.5, 4.5, 5, 6'




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

