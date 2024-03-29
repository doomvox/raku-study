#!/usr/bin/env raku
# 
# quoting_numerics_to_dodge_intstr.raku            17 Dec 2023 

use v6;

sub qi (*@n) {
    @n.map(+*)
}
say .WHAT for qi <1 3 0.2>;
# (Int)
# (Int)
# (Rat)

say "---";
say .WHAT for qi <666>;
## without slurpy star, fails with just one item:
### Type check failed in binding to parameter '@n'; expected Positional but got IntStr (IntStr.new(666, "666"))
## with the slurpy star, works:
# (Int)



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

